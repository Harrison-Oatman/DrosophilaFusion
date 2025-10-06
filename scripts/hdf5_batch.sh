#!/bin/bash
#SBATCH --job-name=convert_hdf5         # Job name
#SBATCH --output=output_%j.out          # Standard output and error log
#SBATCH --ntasks=1                      # Number of tasks (cores)
#SBATCH --time=08:00:00                 # Time limit hrs:min:sec
#SBATCH --mem=250G                      # Memory limit (total)
#SBATCH --partition=genx                # Partition name
#SBATCH --cpus-per-task=16              # Number of CPU cores per task

module load uv
cd ~/DrosophilaFusion/
uv init

# Run your Python script with job_number and total_jobs
uv un python ./scripts/hdf5_extraction.py -i "/mnt/home/lyang/celph/Trachea/2025-09-30_140235" -o "/mnt/home/lyang/celph/Trachea/2025-09-30_140235" --nprocs 16 --level INFO