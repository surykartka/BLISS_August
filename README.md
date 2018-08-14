# BLISS test: August 2018

> Ania

1. Ile procent wszystkich readów posiada odpowiedni barkod na poczatku readu R1. 

Czyli dla  próbki B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq ile procent:
- ma barkod AGACTC (próbka  PR_3)
- ma barkod  CATGAG (próbka C1_3)
- nie ma barkodu (nie barkodowane PR_3 + niebarkodowane C1_3, niestety nie możemy ich rozdzielić)

Podobnie dla próbki B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq ile procent:
- ma barkod AGACTC (próbka  RT)
- ma barkod  CATGAG (próbka NB_3)
- nie ma barkodu (nie barkodowane RT + niebarkodowane NB_3)

2. Ile procent readów barkodowanych mapuje się na genom ludzki (i tu uwaga - próbki C1_3, PR_3 i NB_3 są zrobione z komórek HeLa, natomiast próbka RT z męskiego gDNA).

3. Jeżeli poprzednie punkty wyjdą ok, to dla próbek  C1_3, PR_3 i NB_3 można jeszcze sprawdzić odsetek readów mapujących się do telomerów.

### Data

* `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`:
	* 350,588 read pairs:
		* R1: 35,409,388 bp
		* R2: 35,409,388 bp
* `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq`:
	*  609,886 read pairs:
		* R1: 61,598,486 bp
		* R2: 61,598,486 bp

### Barcodes

Commands written to [`barcodes.sh`](barcodes.sh).

1. `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`:
	* 350,588 read pairs in total:
		* 95,722 (27.3%) contain the exact `AGACTC` barcode
		* 195,286 (55.7%) contain the exact `CATGAG` barcode
		* 59,580 (17.0%) are barcode-free

2. `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq`:
	* 609,886 read pairs in total
		 * 405,608 (66.5%) contain the exact `AGACTC` barcode
		 * 161,856 (26.5%) contain the exact `CATGAG` barcode
		 * 42,422 (7.0%) are barcode-free	
	