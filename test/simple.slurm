#!/bin/sh

#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem=5000m
#SBATCH --job-name=simple

echo "Scratch directory: $TMPDIR"
echo "Date:"
date

echo "My job is running on node:"
hostname
uname -a

echo "Some random text" > randomtext.txt

sleep 240
