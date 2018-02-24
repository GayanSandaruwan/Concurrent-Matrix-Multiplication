#include <iostream>
#include <chrono>
#include <ctime>
using namespace std;
void MatMul(double** matA, double** matB, double** result,int N);
double genRand(double fMin, double fMax);
void generateMatrixes(double** matA,double** matB,double **result,int N);
int main(int args,char* argv[]) {
    int input = atoi(argv[1]);
    int N = input;
//    cout << "Running  : " <<N<<"*"<<N<<"  Matrix Multiplication"<<endl;

    double** matA = new double*[N];
    double** matB = new double*[N];
    double** matBTranspose = new double*[N];
    double** result = new double*[N];

    generateMatrixes(matA,matB,result, N);

    //Creating transpose Matrix
    for (int k = 0; k < N; ++k) {
        matBTranspose[k]= new double[N];
    }
    //Getting the transpose Of matB
    for(int i=0;i<N;i++) {
        for (int j = 0; j < N; ++j) {
            matBTranspose[j][i] = matB[i][j];
        }
    }
    auto start = chrono::steady_clock::now();

    MatMul(matA, matBTranspose,result,N);
    auto end = chrono::steady_clock::now();

    cout <<chrono::duration_cast<chrono::milliseconds>(end -start).count()<<endl;

    delete matA;
    delete matB;
    delete result;

    return 0;
}

void MatMul(double** matA, double ** matBTranspose, double ** result,int N){
    /*
     * Multiply A & B matrixs and save in results
     */

    #pragma omp parallel for
    for(int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            double* matAi = matA[i];
            double *matBki = matBTranspose[j];
            double resultij = 0.0;// Improvement reduce mutual exclusion
            for (int k = 0; k < N; k += 10) {
                resultij += matAi[k] * matBki[k] +                //Improving the locality
                            matAi[k + 1] * matBki[k + 1] +
                            matAi[k + 2] * matBki[k + 2] +
                            matAi[k + 3] * matBki[k + 3] +
                            matAi[k + 4] * matBki[k + 4] +
                            matAi[k + 5] * matBki[k + 5] +
                            matAi[k + 6] * matBki[k + 6] +
                            matAi[k + 7] * matBki[k + 7] +
                            matAi[k + 8] * matBki[k + 8] +
                            matAi[k + 9] * matBki[k + 9];
            }
            result[i][j] = resultij;                                // Improvement reduce mutual exclusion
        }
    }
}

double genRand(double fMin, double fMax)
{    /*
     * Generate random value between the minimum and Maxmimum provided
     */
    int random_variable = rand();
    double f = (double)random_variable / RAND_MAX;
    return fMin + f * (fMax - fMin);
}
void generateMatrixes(double** matA,double** matB,double ** result, int N){
    /*
     * Initialize the matrices
     */
    for(int i = 0; i < N; ++i){
        matA[i] = new double[N];
        matB[i] = new double[N];
        result[i] = new double[N];
    }

    for(int i = 0; i < N; ++i)
        for(int j = 0; j < N; ++j)
            matA[i][j] = genRand(0, 1000);

    for(int i = 0; i < N; ++i)
        for(int j = 0; j< N; ++j){
            double tempVal = genRand(0, 1000);
            matB[i][j] = tempVal;
        }
}
