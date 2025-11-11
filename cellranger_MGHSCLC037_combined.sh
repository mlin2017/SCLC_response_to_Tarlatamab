#!/bin/bash
#SBATCH --job-name=MGHSCLC037_combined
#SBATCH --partition=bigmem
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=120G
#SBATCH --output=/data/rama/labMembers/mao20/MGH2024/CTC/sh/log/MGHSCLC037_combined.out
#SBATCH --error=/data/rama/labMembers/mao20/MGH2024/CTC/sh/log/MGHSCLC037_combined.err
#SBATCH --time=48:00:00

cd /data/rama/labMembers/mao20/MGH2024/CTC/sh/results 


cellranger count --id=MGHSCLC037_combined \
	--fastqs=/data/rama/labMembers/mao20/MGH2024/CTC/sh/data/20250410_MGHSCLC036_MGHSCLC037_10x/v2/outs/fastq_path,/data/rama/labMembers/mao20/MGH2024/CTC/sh/data/20250513_MGHSCLC002_031_036_037_10x/20250513_MGHSCLC002_031_036_037/outs/fastq_path \
	--sample=MGHSCLC037_10x,MGHSCLC037_10x_2 \
	--transcriptome=/data/rama/labMembers/mao20/pipeline/tools/refdata-gex-GRCh38-2024-A \
	--create-bam=true \
	--localcores=8 \
	--localmem=100


