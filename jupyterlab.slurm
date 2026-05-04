#!/bin/bash

# Adjust these values as needed
#SBATCH --cpus-per-task=1
#SBATCH --mem=2gb
#SBATCH --time=6:00:00


# Don't change these settings
#SBATCH --nodes=1
#SBATCH --partition=interactive
#SBATCH --job-name=minimal-notebook-7.4.1
#PBS -j oe

# Load Jupyterlab module
module load devel/jupyterlab/7.4.1

# Start jupyterlab
${JUPYTERLAB_BIN_DIR}/minimal-notebook.sh
