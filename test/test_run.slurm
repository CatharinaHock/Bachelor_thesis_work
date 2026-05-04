#!/bin/bash
#SBATCH --job-name=my_test_job       # Job name
#SBATCH --output=output_%j.txt       # Output file (%j = job ID)
#SBATCH --error=error_%j.txt         # Error file
#SBATCH --time=00:10:00              # Max runtime (hh:mm:ss)
#SBATCH --ntasks=1                   # Number of tasks (usually 1 unless MPI)
#SBATCH --cpus-per-task=2            # Number of CPU cores per task
#SBATCH --mem=2G                     # Memory per node


# Optional: load required modules
module load python/3.10

# Your commands start here:
echo "Starting job on $(hostname)"
python test_script.py
echo "Job finished at $(date)"
