# BLISS test: August 2018

## Data

* `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`:
	* 350,588 read pairs:
		* R1: 35,409,388 bp
		* R2: 35,409,388 bp
* `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq`:
	*  609,886 read pairs:
		* R1: 61,598,486 bp
		* R2: 61,598,486 bp

## Barcodes

Commands written to [`barcodes.sh`](barcodes.sh).

1. `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`:
	* 350,588 read pairs in total:
		* 95,722 (27.3%) contain the exact `AGACTC` barcode (at the 5' end of R1):
			* 43.9% of them, i.e. 42,050 contain additional `T` (`AGACTCT` barcode)
		* 195,286 (55.7%) contain the exact `CATGAG` barcode:
			* 10.4% of them, i.e. 20,344 contain contain additional `T` (`CATGAGT` barcode)
		* 59,580 (17.0%) are barcode-free

2. `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq`:
	* 609,886 read pairs in total:
		 * 405,608 (66.5%) contain the exact `AGACTC` barcode:
		 	* 97.1% of them, i.e. 393,911 contain additional `T` (`AGACTCT` barcode)
		 * 161,856 (26.5%) contain the exact `CATGAG` barcode:
		 	* 17.5% of them, i.e. 28,318 contain contain additional `T` (`CATGAGT` barcode)
		 * 42,422 (7.0%) are barcode-free	

## Mapping

Mapping of barcode-trimmed with bowtie2 to GRCh38:

* `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`
	* starting with `AGACTC` ("PR_3"):

			95722 reads; of these:
			  95722 (100.00%) were paired; of these:
			    81143 (84.77%) aligned concordantly 0 times
			    3928 (4.10%) aligned concordantly exactly 1 time
			    10651 (11.13%) aligned concordantly >1 times
			    ----
			    81143 pairs aligned concordantly 0 times; of these:
			      469 (0.58%) aligned discordantly 1 time
			    ----
			    80674 pairs aligned 0 times concordantly or discordantly; of these:
			      161348 mates make up the pairs; of these:
			        156939 (97.27%) aligned 0 times
			        1894 (1.17%) aligned exactly 1 time
			        2515 (1.56%) aligned >1 times
			18.02% overall alignment rate

	* starting with `CATGAG` ("C1_3"):

			195286 reads; of these:
			  195286 (100.00%) were paired; of these:
			    194522 (99.61%) aligned concordantly 0 times
			    608 (0.31%) aligned concordantly exactly 1 time
			    156 (0.08%) aligned concordantly >1 times
			    ----
			    194522 pairs aligned concordantly 0 times; of these:
			      29 (0.01%) aligned discordantly 1 time
			    ----
			    194493 pairs aligned 0 times concordantly or discordantly; of these:
			      388986 mates make up the pairs; of these:
			        388584 (99.90%) aligned 0 times
			        244 (0.06%) aligned exactly 1 time
			        158 (0.04%) aligned >1 times
			0.51% overall alignment rate

* ``B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq``
	* starting with `AGACTC` ("RT"):

			405608 reads; of these:
			  405608 (100.00%) were paired; of these:
			    183183 (45.16%) aligned concordantly 0 times
			    176990 (43.64%) aligned concordantly exactly 1 time
			    45435 (11.20%) aligned concordantly >1 times
			    ----
			    183183 pairs aligned concordantly 0 times; of these:
			      27440 (14.98%) aligned discordantly 1 time
			    ----
			    155743 pairs aligned 0 times concordantly or discordantly; of these:
			      311486 mates make up the pairs; of these:
			        236675 (75.98%) aligned 0 times
			        35663 (11.45%) aligned exactly 1 time
			        39148 (12.57%) aligned >1 times
			70.82% overall alignment rate

	* starting with `CATGAG` ("NB_3"):

			161856 reads; of these:
			  161856 (100.00%) were paired; of these:
			    157422 (97.26%) aligned concordantly 0 times
			    3574 (2.21%) aligned concordantly exactly 1 time
			    860 (0.53%) aligned concordantly >1 times
			    ----
			    157422 pairs aligned concordantly 0 times; of these:
			      263 (0.17%) aligned discordantly 1 time
			    ----
			    157159 pairs aligned 0 times concordantly or discordantly; of these:
			      314318 mates make up the pairs; of these:
			        313201 (99.64%) aligned 0 times
			        597 (0.19%) aligned exactly 1 time
			        520 (0.17%) aligned >1 times
			3.25% overall alignment rate

---

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
