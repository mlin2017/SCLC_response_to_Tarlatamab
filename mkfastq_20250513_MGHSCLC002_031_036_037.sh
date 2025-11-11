#!/bin/bash
#SBATCH --job-name=MGHSCLC002_031_036_037
#SBATCH --partition=bigmem
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=120G
#SBATCH --output=/data/rama/labMembers/mao20/MGH2024/CTC/sh/data/20250513_MGHSCLC002_031_036_037_10x/mkfastq.out
#SBATCH --error=/data/rama/labMembers/mao20/MGH2024/CTC/sh/data/20250513_MGHSCLC002_031_036_037_10x/mkfastq.err
#SBATCH --time=48:00:00


module load bcl2fastq/2.20.0

cd /data/rama/labMembers/mao20/MGH2024/CTC/sh/data/20250513_MGHSCLC002_031_036_037_10x


cellranger mkfastq --id=20250513_MGHSCLC002_031_036_037 --run=/data/rama/labMembers/wx036/internal_seq/20250513_MGHSCLC002_031_036_037_10x --csv=SampleSheet.csv

