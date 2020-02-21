/*
 ============================================================================
 Name        : Fibonacci.c
 Author      : PALACIOS
 Version     :
 Copyright   : FISI-UNMSM
 Description : Serie de fibonacci usando Mutex
 ============================================================================
 */
#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

int n; // tamaño de la secuencia de Fibonacci
int *fibseq; // array que contiene el valor de cada término
int i; // contador para los threads.

void *runn(void *arg);

int main(int argc, char *argv[]) {

	if (atoi(argv[1]) < 0) {
		printf("%d tiene que ser >= 0 \n", atoi(argv[1]));
		return -1;
	}

	n = atoi(argv[1]);
	fibseq = (int *) malloc(n * sizeof(int));
	pthread_t *threads = (pthread_t *) malloc(n * sizeof(pthread_t));
	pthread_attr_t attr;

	pthread_attr_init(&attr);

	for (i = 0; i < n; i++) {
		pthread_create(&threads[i], &attr, runn, NULL);
	}

	for (int j = 0; j < n; j++) {
		pthread_join(threads[j], NULL);
	}

	// mostandro los  valores
	printf("La serie de Fibonacci: ");

	for (int k = 0; k < n; k++) {
		printf("%d,", fibseq[k]);
	}
	return 0;
}

void *runn(void *arg) {
	if (i == 0) {
		fibseq[i] = 0;
		pthread_exit(0);
	}

	if (i == 1) {
		fibseq[i] = 1;
		pthread_exit(0);
	} else {
		fibseq[0] = 0;
		fibseq[1] = 1;

		int p, pp, fibp, fibpp;

		p = (i - 1);
		pp = (i - 2);
		fibp = fibseq[p];
		fibpp = fibseq[pp];
		fibseq[i] = fibseq[i - 1] + fibseq[i - 2];
		pthread_exit(0);
	}
}
