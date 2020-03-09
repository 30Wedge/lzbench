#!/bin/bash
#SBATCH -J lzbench.%u
#SBATCH -o result.lzbench.%u.o%j
#SBATCH -e result.lzbench.%u.e%j
#SBATCH -n 8
#SBATCH --exclusive
#SBATCH -p normal # normal queue; use development or serial if queue wait time is too long
#SBATCH -t 01:00:00 # 1 hour

./lzbench  -p -ezopfli ../enwik8.mini
