/*
 * =====================================================================================
 *
 *       Filename:  sortString.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 02:30:21
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#define __STDC_WANT_LIB_EXT1__ 1
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#define BUF_LEN 256
#define INIT_NSTR 2
#define NSTR_INCR 2 // Input buffer length
char* str_in();
void str_sort(const char**, size_t);
void swap(const char**, const char**);
void str_out(const char* const*, size_t);
void free_memory(char**, size_t); //

// Function main - execution starts here
int main(void)
{
        size_t pS_size = INIT_NSTR;
        // count of pS elements
        char **pS = calloc(pS_size, sizeof(char*)); // Array of string pointers
        if(!pS)
        {
                printf("Failed to allocate memory for string pointers.\n");
                exit(1);
        }
        char **pTemp = NULL;
        // Temporary pointer
        size_t str_count = 0;
        // Number of strings read
        char *pStr = NULL;
        // String pointer
        printf("Enter one string per line. Press Enter to end:\n");
        while((pStr = str_in()) != NULL)
        {
                if(str_count == pS_size)
                {
                        pS_size += NSTR_INCR;
                        if(!(pTemp = realloc(pS, pS_size*sizeof(char*))))
                        {
                                printf("Memory allocation for array of strings failed.\n");
                                return 2;
                        }
                        pS = pTemp;
                }
                pS[str_count++] = pStr;
        }
        str_sort(pS, str_count);
        str_out(pS, str_count);
        free_memory(pS, str_count);
        return 0;
        // Sort strings
        // Output strings
        // Free all heap memory
}
