#!/usr/bin/bash
mkdir summary
mkdir sam_samples
NAMES="SAMPLE1 SAMPLE2"
for SAMPLE in $NAMES; do
hisat2 -p 8 --no-unal --dta \
-x indexes/chrX_tran \
-1 samples/${SAMPLE}_R1.fastq \
-2 samples/${SAMPLE}_R2.fastq \
-S sam_samples/${SAMPLE}.sam \
--summary-file summary/${SAMPLE}.txt
samtools sort -@ 8 -o ${SAMPLE}.sorted.bam sam_samples/${SAMPLE}.sam
samtools index ${SAMPLE}.sorted.bam
htseq-count -i gene_id -f bam -t exon -m intersection-nonempty -s no ${SAMPLE}.sorted.bam genes/chrX.gtf > ${SAMPLE}.count.txt
done