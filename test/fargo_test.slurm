#!/bin/bash
#SBATCH --job-name=fargo3d_run
#SBATCH --time=02:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=4G
#SBATCH --output=fargo3d.out
#SBATCH --error=fargo3d.err

module load compiler/gnu/14.2
module load mpi/openmpi/5.0-gnu-14.2

../fargo3d/fargo3d ../fargo3d/setups/fargo_alpha_visc/fargo_alpha_visc.par
