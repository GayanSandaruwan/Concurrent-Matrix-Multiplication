#################################################
#		to Complie in linunx		#
#################################################

g++ serial.cpp -o serial.exe -fopenmp -std=c++11
g++ parallel.cpp -o parallel.exe -fopenmp -std=c++11
g++ parallel_op.cpp -o parallel_op.exe -fopenmp -O2 -std=c++11


#################################################
#		to run the program		#
#################################################

./serial.exe "Matrix Dimension- N"
./parallel.exe "Matrix Dimension- N"
./parallel_op.exe "Matrix Dimension- N"

eg : 
./serial.exe 100
./parallel.exe 100
./parallel_op.exe 100


Or to test with random samples and inputs,

#################################################
#		run the python3 script		#
#################################################

execute following in terminal,

python3 execute.py ./serial.exe ./parallel.exe ./parallel_op.exe


