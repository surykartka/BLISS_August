C1_R1='B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN'
C1_R2='B_SCBLESS_C1_3_PR_3_S1_L001_R2_D4VBN'
NB_R1='B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN'
NB_R2='B_SCBLESS_NB_3_RT_S2_L001_R2_D4VBN'


gunzip -c barcodes/${C1_R1}_AGACTC_30.fastq.gz > barcodes_fasta/${C1_R1}_AGACTC_30.fastq
gunzip -c barcodes/${C1_R1}_CATGAG_30.fastq.gz > barcodes_fasta/${C1_R1}_CATGAG_30.fastq
gunzip -c barcodes/${C1_R1}_none_30.fastq.gz > barcodes_fasta/${C1_R1}_none_30.fastq

gunzip -c barcodes/${NB_R1}_AGACTC_30.fastq.gz > barcodes_fasta/${NB_R1}_AGACTC_30.fastq
gunzip -c barcodes/${NB_R1}_CATGAG_30.fastq.gz > barcodes_fasta/${NB_R1}_CATGAG_30.fastq
gunzip -c barcodes/${NB_R1}_none_30.fastq.gz > barcodes_fasta/${NB_R1}_none_30.fastq

fastq_to_fasta -Q33 -i barcodes_fasta/${C1_R1}_AGACTC_30.fastq -o barcodes_fasta/${C1_R1}_AGACTC_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${C1_R1}_CATGAG_30.fastq -o barcodes_fasta/${C1_R1}_CATGAG_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${C1_R1}_none_30.fastq -o barcodes_fasta/${C1_R1}_none_30.fasta

fastq_to_fasta -Q33 -i barcodes_fasta/${NB_R1}_AGACTC_30.fastq -o barcodes_fasta/${NB_R1}_AGACTC_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${NB_R1}_CATGAG_30.fastq -o barcodes_fasta/${NB_R1}_CATGAG_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${NB_R1}_none_30.fastq -o barcodes_fasta/${NB_R1}_none_30.fasta


gunzip -c barcodes/${C1_R2}_AGACTC_30.fastq.gz > barcodes_fasta/${C1_R2}_AGACTC_30.fastq
gunzip -c barcodes/${C1_R2}_CATGAG_30.fastq.gz > barcodes_fasta/${C1_R2}_CATGAG_30.fastq
gunzip -c barcodes/${C1_R2}_none_30.fastq.gz > barcodes_fasta/${C1_R2}_none_30.fastq

gunzip -c barcodes/${NB_R2}_AGACTC_30.fastq.gz > barcodes_fasta/${NB_R2}_AGACTC_30.fastq
gunzip -c barcodes/${NB_R2}_CATGAG_30.fastq.gz > barcodes_fasta/${NB_R2}_CATGAG_30.fastq
gunzip -c barcodes/${NB_R2}_none_30.fastq.gz > barcodes_fasta/${NB_R2}_none_30.fastq

fastq_to_fasta -Q33 -i barcodes_fasta/${C1_R2}_AGACTC_30.fastq -o barcodes_fasta/${C1_R2}_AGACTC_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${C1_R2}_CATGAG_30.fastq -o barcodes_fasta/${C1_R2}_CATGAG_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${C1_R2}_none_30.fastq -o barcodes_fasta/${C1_R2}_none_30.fasta

fastq_to_fasta -Q33 -i barcodes_fasta/${NB_R2}_AGACTC_30.fastq -o barcodes_fasta/${NB_R2}_AGACTC_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${NB_R2}_CATGAG_30.fastq -o barcodes_fasta/${NB_R2}_CATGAG_30.fasta
fastq_to_fasta -Q33 -i barcodes_fasta/${NB_R2}_none_30.fastq -o barcodes_fasta/${NB_R2}_none_30.fasta


python scripts/telomeres.py
