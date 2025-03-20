#!/usr/bin/bash
NAMES="SAMPLE1 SAMPLE2"
for SAMPLE in $NAMES; do
samtools sort -@ 8 -o ${SAMPLE}.sorted.bam sam_samples/${SAMPLE}.sam
samtools index ${SAMPLE}.sorted.bam
htseq-count -i gene_id -f bam -t exon -m intersection-nonempty -s no ${SAMPLE}.sorted.bam genes/chrX.gtf > ${SAMPLE}.count.txt
done
