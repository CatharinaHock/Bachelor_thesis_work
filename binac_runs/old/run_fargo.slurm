#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=2
#SBATCH --mem=32000
#SBATCH --gres=gpu:h200:2
#SBATCH --time=14-00:00:00
#SBATCH --partition=gpu
#SBATCH --mail-type=ALL
#SBATCH --mail-user=cu284@uni-heidelberg.de
#SBATCH --output=%x.out
#SBATCH --error=%x.err
cd $SLURM_SUBMIT_DIR
module purge
module load mpi/openmpi/4.1-gnu-13.3
module load devel/cuda/12.6



mpirun --mca pml ucx --mca btl ^openib --bind-to core --map-by core -report-bindings ./fargo3d -o "outputdir=@outputs/${SLURM_JOB_NAME}" ../binac_runs/${SLURM_JOB_NAME}.par


