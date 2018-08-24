C1_R1='B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN'
C1_R2='B_SCBLESS_C1_3_PR_3_S1_L001_R2_D4VBN'
NB_R1='B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN'
NB_R2='B_SCBLESS_NB_3_RT_S2_L001_R2_D4VBN'

index12rc='TGGAATTCTCGGGTGCCAAGGAACTCCAGTCACCTTGTAATCTCGTATGCCGTCTTCTGCTTG'
index6rc='TGGAATTCTCGGGTGCCAAGGAACTCCAGTCACGCCAATATCTCGTATGCCGTCTTCTGCTTG'

# reads with index 12 (rc) left
cutadapt -a ${index12rc} -g ${index12rc} --discard-trimmed --minimum-length 6 -o adapters/${C1_R1}_AGACTC_index12.fastq.gz -p adapters/${C1_R2}_AGACTC_index12.fastq.gz barcodes/${C1_R1}_AGACTC_30.fastq.gz barcodes/${C1_R2}_AGACTC_30.fastq.gz > analysis/adapters.out
cutadapt -a ${index12rc} -g ${index12rc} --discard-trimmed --minimum-length 6 -o adapters/${C1_R1}_CATGAG_index12.fastq.gz -p adapters/${C1_R2}_CATGAG_index12.fastq.gz barcodes/${C1_R1}_CATGAG_30.fastq.gz barcodes/${C1_R2}_CATGAG_30.fastq.gz >> analysis/adapters.out
cutadapt -a ${index12rc} -g ${index12rc} --discard-trimmed --minimum-length 6 -o adapters/${C1_R1}_none_index12.fastq.gz -p adapters/${C1_R2}_none_index12.fastq.gz barcodes/${C1_R1}_none_30.fastq.gz barcodes/${C1_R2}_none_30.fastq.gz >> analysis/adapters.out

# reads with index 6 (rc) left
cutadapt -a ${index6rc} -g ${index6rc} --discard-trimmed --minimum-length 6 -o adapters/${NB_R1}_AGACTC_index6.fastq.gz -p adapters/${NB_R2}_AGACTC_index6.fastq.gz barcodes/${NB_R1}_AGACTC_30.fastq.gz barcodes/${NB_R2}_AGACTC_30.fastq.gz >> analysis/adapters.out
cutadapt -a ${index6rc} -g ${index6rc} --discard-trimmed --minimum-length 6 -o adapters/${NB_R1}_CATGAG_index6.fastq.gz -p adapters/${NB_R2}_CATGAG_index6.fastq.gz barcodes/${NB_R1}_CATGAG_30.fastq.gz barcodes/${NB_R2}_CATGAG_30.fastq.gz >> analysis/adapters.out
cutadapt -a ${index6rc} -g ${index6rc} --discard-trimmed --minimum-length 6 -o adapters/${NB_R1}_none_index6.fastq.gz -p adapters/${NB_R2}_none_index6.fastq.gz barcodes/${NB_R1}_none_30.fastq.gz barcodes/${NB_R2}_none_30.fastq.gz >> analysis/adapters.out


bowtie2 -5 1 -3 35 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 adapters/${C1_R1}_AGACTC_index12.fastq.gz -2 adapters/${C1_R2}_AGACTC_index12.fastq.gz --threads 6 -S hg_mapping/${C1_R1}_AGACTC_index12_bowtie.sam
bowtie2 -5 1 -3 35 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 adapters/${C1_R1}_CATGAG_index12.fastq.gz -2 adapters/${C1_R2}_CATGAG_index12.fastq.gz --threads 6 -S hg_mapping/${C1_R1}_CATGAG_index12_bowtie.sam

bowtie2 -5 1 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 adapters/${NB_R1}_AGACTC_index6.fastq.gz -2 adapters/${NB_R2}_AGACTC_index6.fastq.gz --threads 6 -S hg_mapping/${NB_R1}_AGACTC_index6_bowtie.sam
bowtie2 -5 1 -3 35 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 adapters/${NB_R1}_CATGAG_index6.fastq.gz -2 adapters/${NB_R2}_CATGAG_index6.fastq.gz --threads 6 -S hg_mapping/${NB_R1}_CATGAG_index6_bowtie.sam
