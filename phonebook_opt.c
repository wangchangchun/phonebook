#include <stdlib.h>
<<<<<<< HEAD
#include <stdio.h>
#include <string.h>
#include <ctype.h>
=======

>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed
#include "phonebook_opt.h"

/* FILL YOUR OWN IMPLEMENTATION HERE! */
entry *findName(char lastName[], entry *pHead)
{
<<<<<<< HEAD
    while (pHead !=NULL) {
        if (strcasecmp(lastName, pHead->lastName)==0)
            return pHead;
        pHead = pHead->pNext;
    }
=======
    /* TODO: implement */
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed
    return NULL;
}

entry *append(char lastName[], entry *e)
{
<<<<<<< HEAD
    e->pNext = (entry *)malloc(sizeof(entry));
    e = e->pNext;
    strcpy(e->lastName, lastName);
    e->pNext = NULL;

    return e;
=======
    return NULL;
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed
}
