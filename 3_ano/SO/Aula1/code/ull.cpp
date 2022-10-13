/*
 *
 * \author (2016) Artur Pereira <artur at ua.pt>
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>

#include "ull.h"

namespace ull
{
    /* ************************************************* */

    /* The information support data structure  */
    struct Register
    {
        uint32_t nmec;       //!< student number
        const char *name;    //!< student name
    };

    /* The linked-list support data structure */
    struct Node 
    {
        Register reg;
        struct Node *next;
    };

    static Node *head = NULL;

    /* ************************************************* */

    void reset()
    {
        Node *p;
        for(p = head; p != NULL; p = p->next){
            free(p);
        }
    }

    /* ************************************************* */

    void load(const char *fname)
    {
        FILE* ptr = fopen(fname , "r");
        if(ptr == NULL){
            fprintf(stderr , "File named %s can't be opened!" , fname);
        }
        else{
            ssize_t read;
            int lc = 1;
            size_t len = 0;
            char* line = NULL;
            while((read = getline(&line,&len,ptr) != -1))
            {
                char* name = new char[50];
                int32_t nmec;
                
                sscanf(line , "%[^;]; %d\n" , name , &nmec);
                //fprintf(stderr , "{%s,%d}\n" , name , nmec);
                if(name != NULL)
                {
                    insert(nmec , name);
                    
                }
                else{
                    fprintf(stderr , "Error reading file, line = %d\n" , lc);
                }

                delete name;
            
                lc++;
            }
            delete line;
            fclose(ptr);
        }
    }

    /* ************************************************* */

    void print()
    {
        /*Print do cabeçalho*/
        fprintf(stdout,"\n");
        fprintf(stdout,"---------------------------------------------\n");
        fprintf(stdout,"|   nmec    |   nome                        |\n");
        fprintf(stdout,"---------------------------------------------\n");
        /*Print dos registos*/
        for(auto p = head; p != NULL; p = p->next){
            fprintf(stdout,"| %6u | %-30s |\n", p->reg.nmec, p->reg.name);
        }
        fprintf(stdout,"---------------------------------------------\n");
        fprintf(stdout,"\n");
    }

    /* ************************************************* */

    void insert(uint32_t nmec, const char *name)
    {
        /*Procurar posicao a inserir*/
        Node *p1, *p2;
        for(p1 = NULL, p2 = head; p2 != NULL; p1 = p2, p2 = p2->next){
            if(p2->reg.nmec >= nmec){
                break;
            }
        }

        /*Verificar se ja existe*/
        if(p2 != NULL && p2->reg.nmec == nmec){
            return;
        }

        /*Criar no*/
        Node *n = new Node();
        n->reg.nmec = nmec;
        n->reg.name = name;

        /*Preencher no*/
        if(p1 == NULL){
            n = p1;
        }else{
            p1->next = n;
        }
        n->next = p2;
    }

    /* ************************************************* */

    const char *query(uint32_t nmec)
    {
        /*Procurar o Nó*/
        Node *p;
        for(p = head; p != NULL; p = p->next){
            if(p->reg.nmec == nmec) break;
        }
        
        if(p == NULL){
            fprintf(stderr,"\e[31;1mRegister does not exist\e[0m (nmec: %u)\n", nmec);
            return NULL;
        }

        return strdup(p->reg.name);
    }

    /* ************************************************* */

    void remove(uint32_t nmec)
    {
        /*Procurar o Nó*/
        Node *p;
        for(p = head; p != NULL; p = p->next){
            if(p->reg.nmec == nmec) break;
        }
        
        if(p == NULL){
            fprintf(stderr,"\e[31;1mRegister does not exist\e[0m (nmec: %u)\n", nmec);
        }

        free(p);
    }

    /* ************************************************* */

}
