#include <stdlib.h>
#include <stdio.h>

/*      Grammar
    S → ε | a B S | b A S
    A → a | b A A
    B → a B B | b
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

void A(void) 
{
   switch (lookahead)
    {
    case 'a':
        eat('a');
        break;
    case 'b':
        eat('b'); A(); A();
        break;
    default:
        error();
        break;
    } 
}

void B(void)
{
    switch (lookahead)
    {
    case 'a':
        eat('a'); B(); B();
        break;
    case 'b':
        eat('b');
        break;
    default:
        error();
        break;
    }
}

void S(void) 
{
    switch (lookahead)
    {
    case 'a':
        eat('a'); B(); S();
        break;
    case 'b':
        eat('b'); A(); S();
        break;
    case '$':
        eat('$'); epsilon();
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