/*
 * =====================================================================================
 *
 *       Filename:  pthrdOne.cpp
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  17.03.2019 22:14:44
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

int turn = 1;
int counter = 0;
int t, n;

struct tData {
        int me;
        int next;
};

pthread_mutex_t mutex;
pthread_cond_t cond;

void *tFunc(void *arg)
{
        struct tData *data;
        data = (struct tData *) arg;
        pthread_mutex_lock(&mutex);
        for (int i = 0; i < n; i++)
        {
                while (turn != data->me)
                        pthread_cond_wait(&cond, &mutex);
                counter++;
                turn = data->next;
                printf("%d goes (turn %d of %d), %d next\n", data->me, i+1, n, turn);
                pthread_cond_broadcast(&cond);
        }
        pthread_mutex_unlock(&mutex);
}

int main (int argc, char *argv[]) {
        t = atoi(argv[1]);
        n = atoi(argv[2]);
        struct tData td[t + 1];
        pthread_t threads[t + 1];
        int rc;

        pthread_mutex_init(&mutex, NULL);
        pthread_cond_init(&cond, NULL);

        for (int i = 1; i <= t; i++)
        {
                td[i].me = i;
                if (i == t)
                        td[i].next = 1;
                else
                        td[i].next = i + 1;

                rc = pthread_create(&threads[i], NULL, tFunc, (void *)&td[i]);
                if (rc)
                {
                        printf("Error: Unable to create thread: %d\n", rc);
                        exit(-1);
                }
        }
        void *ret;
        for (int i = 1; i <= t; i++)
                pthread_join(threads[i], &ret);
}
