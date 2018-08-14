C1_R1='B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN'
C1_R2='B_SCBLESS_C1_3_PR_3_S1_L001_R2_D4VBN'
NB_R1='B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN'
NB_R2='B_SCBLESS_NB_3_RT_S2_L001_R2_D4VBN'


cutadapt -g ^AGACTC -e 0 --overlap 6 --minimum-length 30 --discard-untrimmed -o barcodes/${C1_R1}_AGACTC_30.fastq.gz -p barcodes/${C1_R2}_AGACTC_30.fastq.gz data/${C1_R1}.fastq.gz data/${C1_R2}.fastq.gz > analysis/barcodes.out
cutadapt -g ^CATGAG -e 0 --overlap 6 --minimum-length 30 --discard-untrimmed -o barcodes/${C1_R1}_CATGAG_30.fastq.gz -p barcodes/${C1_R2}_CATGAG_30.fastq.gz data/${C1_R1}.fastq.gz data/${C1_R2}.fastq.gz >> analysis/barcodes.out
cutadapt -g ^AGACTC -g ^CATGAG -e 0 --overlap 6 --minimum-length 30 --discard-trimmed -o barcodes/${C1_R1}_none_30.fastq.gz -p barcodes/${C1_R2}_none_30.fastq.gz data/${C1_R1}.fastq.gz data/${C1_R2}.fastq.gz >> analysis/barcodes.out

cutadapt -g ^AGACTC -e 0 --overlap 6 --minimum-length 30 --discard-untrimmed -o barcodes/${NB_R1}_AGACTC_30.fastq.gz -p barcodes/${NB_R2}_AGACTC_30.fastq.gz data/${NB_R1}.fastq.gz data/${NB_R2}.fastq.gz >> analysis/barcodes.out
cutadapt -g ^CATGAG -e 0 --overlap 6 --minimum-length 30 --discard-untrimmed -o barcodes/${NB_R1}_CATGAG_30.fastq.gz -p barcodes/${NB_R2}_CATGAG_30.fastq.gz data/${NB_R1}.fastq.gz data/${NB_R2}.fastq.gz >> analysis/barcodes.out
cutadapt -g ^AGACTC -g ^CATGAG -e 0 --overlap 6 --minimum-length 30 --discard-trimmed -o barcodes/${NB_R1}_none_30.fastq.gz -p barcodes/${NB_R2}_none_30.fastq.gz data/${NB_R1}.fastq.gz data/${NB_R2}.fastq.gz >> analysis/barcodes.out

