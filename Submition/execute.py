import subprocess
import math
import sys
import statistics

seq = []
parallel = []
parallelOpt = []

seqMean = {}
parallelMean = {}
parallelOptMean = {}

seqFile = sys.argv[1]
parallelFile = sys.argv[2]
parallelOptFile = sys.argv[3]

executeLimit = 2000


def numberOfSamples(dataSet):
    n = ((100 * 1.96 * statistics.stdev(dataSet)) / (5 * statistics.mean(dataSet))) ** 2
    return math.ceil(n)


def rerun(fileName, size, times):
    # print times;
    temp = []
    for i in range(times):
        temp.append(int(subprocess.check_output([fileName, str(size)])))
    return temp


file = open("output.txt", "a")

for j in range(200, (executeLimit + 1), 200):

    print("N = " + str(j))
    print("------------------------------------------------------------")

    print("Sequential mean calculation started : 10 samples.")
    seq = rerun(seqFile, j, 10)
    print("std 10 samples:(seq)" + str(statistics.stdev(seq)))
    print("mean 10 samples:(seq) " + str(statistics.mean(seq)))
    numberSeqSamples = numberOfSamples(seq)
    print("Required Sample Size: " + str(numberSeqSamples))
    if numberSeqSamples > 10:
        print("Running again")
        seq = rerun(seqFile, j, numberSeqSamples)
        print("mean " + str(numberSeqSamples) + "samples:(seq) " + str(statistics.mean(seq)))
    else:
        print("Proceeding with sample size 10.")
    seqMean = statistics.mean(seq)

    print("------------------------------------------------------------")

    print("Parallel mean calculation started : 10 samples.")
    parallel = rerun(parallelFile, j, 10)
    print("std 10 samples:(par)" + str(statistics.stdev(parallel)))
    print("mean 10 samples:(par)" + str(statistics.mean(parallel)))
    numberParallelSamples = numberOfSamples(parallel)
    print("Required Sample Size: " + str(numberParallelSamples))
    if numberParallelSamples > 10:
        print("Running again")
        parallel = rerun(parallelFile, j, numberParallelSamples)
        print("mean " + str(numberParallelSamples) + "samples:(parallel) " + str(statistics.mean(parallel)))
    else:
        print("Proceeding with sample size 10.")
    parallelMean = statistics.mean(parallel)
    # parallelDataSet[j] = parallelMean

    print("-----------------------------------------------------------")

    print("Optimized mean calculation started : 10 samples.")
    parallelOpt = rerun(parallelOptFile, j, 10)
    print("std 10 samples:(opt)" + str(statistics.stdev(parallelOpt)))
    print("mean 10 samples:(opt) " + str(statistics.mean(parallelOpt)))
    numberParallelOptSamples = numberOfSamples(parallelOpt)
    print("Required Sample Size: " + str(numberParallelOptSamples))
    if numberParallelOptSamples > 10:
        print("Running again")
        parallelOpt = rerun(parallelOptFile, j, numberParallelOptSamples)
        print("mean " + str(numberParallelOptSamples) + "samples:(opt) " + str(statistics.mean(parallelOpt)))
    else:
        print("Proceeding with sample size 10.")

    parallelOptMean = statistics.mean(parallelOpt)
    # parallelOptDataSet[j] = parallelOptMean

    print(str(j) + " complete")

    print(str(j) + ", " + str(seqMean) + ", " + str(parallelMean) + "," + str(parallelOptMean)+"\n")
    file.write(str(j) + ", " + str(seqMean) + ", " + str(parallelMean) + "," + str(parallelOptMean)+"\n")
    file.flush()
