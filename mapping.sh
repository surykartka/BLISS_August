C1_R1='B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN'
C1_R2='B_SCBLESS_C1_3_PR_3_S1_L001_R2_D4VBN'
NB_R1='B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN'
NB_R2='B_SCBLESS_NB_3_RT_S2_L001_R2_D4VBN'


bowtie2 -5 1 -3 35 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 barcodes/${C1_R1}_AGACTC_30.fastq.gz -2 barcodes/${C1_R2}_AGACTC_30.fastq.gz --threads 6 -S hg_mapping/${C1_R1}_AGACTC_bowtie.sam 2> analysis/bowtie.out
bowtie2 -5 1 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 barcodes/${NB_R1}_AGACTC_30.fastq.gz -2 barcodes/${NB_R2}_AGACTC_30.fastq.gz --threads 6 -S hg_mapping/${NB_R1}_AGACTC_bowtie.sam 2>> analysis/bowtie.out

bowtie2 -5 1 -3 35 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 barcodes/${C1_R1}_CATGAG_30.fastq.gz -2 barcodes/${C1_R2}_CATGAG_30.fastq.gz --threads 6 -S hg_mapping/${C1_R1}_CATGAG_bowtie.sam 2>> analysis/bowtie.out
bowtie2 -5 1 -3 35 --fr -k 5 -x hg_mapping/GCA_000001405.15_GRCh38_no_alt_analysis_set.fna.bowtie_index -1 barcodes/${NB_R1}_CATGAG_30.fastq.gz -2 barcodes/${NB_R2}_CATGAG_30.fastq.gz --threads 6 -S hg_mapping/${NB_R1}_CATGAG_bowtie.sam 2>> analysis/bowtie.out
