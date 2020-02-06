/*
 ============================================================================
 Name        : Reduction_operacion_mpi.c
 Author      : PALACIOS
 Version     :
 Copyright   : FISI-UNMSM
 Description : Compute Pi in MPI C++
 ============================================================================
 */

#include <math.h> 
#include "mpi.h" 
#include <iostream>

using namespace std;

int main(int argc, char *argv[]) {
	int rank;
	int resBAND = 0;
	int nroBit;

	MPI_Init(NULL, NULL);

	MPI_Comm_rank(MPI_COMM_WORLD, &rank);

	if (rank == 0) {
		printf("antes to MPI_Reduce ");
		printf("BAND: %d\n", resBAND);

	}

	switch (rank) {
	case 0:
		nroBit = 101;
		break;
	case 1:
		nroBit = 001;
		break;
	case 2:
		nroBit = 101;
		break;
	default:
		break;
	}

	MPI_Reduce(&nroBit, &resBAND, 1, MPI_INT, MPI_BAND, 0, MPI_COMM_WORLD);

	if (rank == 0) {

		if (resBAND == 1) {
			printf("AND in binry is: 00%d\n", resBAND);
		} else if (resBAND == 10) {
			printf("AND in binry is: 0%d\n", resBAND);
		} else if (resBAND == 0) {
			printf("AND in binry is: 00%d\n", resBAND);
		} else {
			printf("DESPUES to MPI_Reduce %d\n", resBAND);
		}

	}
	MPI_Finalize();

	return 0;
}
