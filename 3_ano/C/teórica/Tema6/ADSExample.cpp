#include <stdlib.h>
#include <stdio.h>

/*      Grammar
    S -> a S b | ε
*/

char lookahead;

void error(void)
{
    printf("\nUnexpected symbol.\n");
    exit(1);
}

void adv(void)
{
    lookahead = getchar();
    printf("%c",lookahead);
}

void eat(char c)
{
    if(lookahead != c) error();
    if(lookahead != '\n') adv();
}

void epsilon(void)
{
}

void S(void) 
{
    switch (lookahead)
    {
    case 'a':
        eat('a'); S(); eat('b');
        break;
    default:
        epsilon();
        break;
    }
}

int main()
{
    while (1)
    {
        printf(">> ");
        adv();
        S();
        eat('\n');
        printf("\n");
    }
    return 0;
}