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
    cout << "Running  : " <<N<<"*"<<N<<"  Matrix Multiplication"<<endl;

    double** matA = new double*[N];
    double** matB = new double*[N];
    double** result = new double*[N];

    generateMatrixes(matA,matB,result, N);

    auto start = chrono::steady_clock::now();

    MatMul(matA, matB,result,N);
    auto end = chrono::steady_clock::now();

    cout << "Elapsed Time : "<<chrono::duration_cast<chrono::milliseconds>(end -start).count()<<"  Miliseconds"<<endl;

    delete matA;
    delete matB;
    delete result;

    return 0;
}

void MatMul(double** matA, double ** matB, double ** result,int N){
    /*
     * Multiply A & B matrixs and save in results
     */

#pragma omp parallel for
    for(int i = 0; i < N; ++i)
        for(int j = 0; j < N; ++j){
            for(int k = 0; k < N; ++k)
                result[i][j] += matA[i][k] * matB[k][j];
        }
}

double genRand(double fMin, double fMax)
{
    /*
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
