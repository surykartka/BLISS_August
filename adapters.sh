C1_R1='B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN'
C1_R2='B_SCBLESS_C1_3_PR_3_S1_L001_R2_D4VBN'
NB_R1='B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN'
NB_R2='B_SCBLESS_NB_3_RT_S2_L001_R2_D4VBN'

index12rc='TGGAATTCTCGGGTGCCAAGGAACTCCAGTCACCTTGTAATCTCGTATGCCGTCTTCTGCTTG'
index6rc='TGGAATTCTCGGGTGCCAAGGAACTCCAGTCACGCCAATATCTCGTATGCCGTCTTCTGCTTG'

# reads with index 12 (rc) left
cutadapt -a ${index12rc} -g ${index12rc} --discard-trimmed --minimum-length 6 -o adapters/${C1_R1}_AGACTC_index12.fastq.gz -p adapters/${C1_R2}_AGACTC_index12.fastq.gz barcodes/${C1_R1}_AGACTC_30.fastq.gz barcodes/${C1_R2}_AGACTC_30.fastq.gz
cutadapt -a ${index12rc} -g ${index12rc} --discard-trimmed --minimum-length 6 -o adapters/${C1_R1}_CATGAG_index12.fastq.gz -p adapters/${C1_R2}_CATGAG_index12.fastq.gz barcodes/${C1_R1}_CATGAG_30.fastq.gz barcodes/${C1_R2}_CATGAG_30.fastq.gz

# reads with index 6 (rc) left
cutadapt -a ${index6rc} -g ${index6rc} --discard-trimmed --minimum-length 6 -o adapters/${NB_R1}_AGACTC_index6.fastq.gz -p adapters/${NB_R2}_AGACTC_index6.fastq.gz barcodes/${NB_R1}_AGACTC_30.fastq.gz barcodes/${NB_R2}_AGACTC_30.fastq.gz
cutadapt -a ${index6rc} -g ${index6rc} --discard-trimmed --minimum-length 6 -o adapters/${NB_R1}_CATGAG_index6.fastq.gz -p adapters/${NB_R2}_CATGAG_index6.fastq.gz barcodes/${NB_R1}_CATGAG_30.fastq.gz barcodes/${NB_R2}_CATGAG_30.fastq.gz
