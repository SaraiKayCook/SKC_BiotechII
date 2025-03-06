#!/bin/bash
cd /Users/saraicook/NGS_practice
fastqc sampleB_R1.fq
fastqc sampleB_R2.fq
conda activate cutadapt
cutadapt -a AGATCGGAAG -A AGATCGGAAG -m 100 -o sampleB_R1.out.fq.gz -p sampleB_R2.out.fq.gz sampleB_R1.fq sampleB_R2.fq
conda deactivate cutadapt
bwa index reference.fa
bwa mem reference.fa sampleB_R1.fq -p sampleB_R2.fq > sampleB.sam
samtools view -S -b sampleB.sam > sampleB.bam
samtools sort sampleB.bam -o sampleB.sorted.bam
bcftools mpileup -Ou -f reference.fa sampleB.sorted.bam > sampleB.mpileup
bcftools call -mv -Ob -o variantsB.bcf sampleB.mpileup
bcftools view variantsB.bcf > variantsB.vcf
bcftools stats variantsB.vcf > summaryB.txt
bcftools filter -e 'QUAL < 20' -o filtered_by_qual.vcf variantsB.vcf
bcftools stats filtered_by_qual.vcf > B_qual.txt
bcftools filter -e 'DP < 10' -o filtered_by_depth.vcf variantsB.vcf
bcftools stats filtered_by_depth.vcf > B_depth.txt
bcftools filter -e 'QUAL < 20 || DP < 10' -o filtered_variants.vcf variantsB.vcf
bcftools stats filtered_variants.vcf > B_var.txt