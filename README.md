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

## Mapping to GRCh38

Mapping of barcode- and polyA-trimmed reads with `bowtie2` to GRCh38 (commands at [`mapping.sh`](mapping.sh)) shows that only `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN` reads starting with `AGACTC` (i.e., "RT" samples) are mappable (70.82% overall alignment rate). `FastQC` confirms that this is the only sample free of long adapters (and even poly-A).

Full statistics from `bowtie2`:

* `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`
	* starting with `AGACTC` ("PR_3"):

			95722 reads; of these:
			  95722 (100.00%) were paired; of these:
			    80482 (84.08%) aligned concordantly 0 times
			    4068 (4.25%) aligned concordantly exactly 1 time
			    11172 (11.67%) aligned concordantly >1 times
			    ----
			    80482 pairs aligned concordantly 0 times; of these:
			      366 (0.45%) aligned discordantly 1 time
			    ----
			    80116 pairs aligned 0 times concordantly or discordantly; of these:
			      160232 mates make up the pairs; of these:
			        155348 (96.95%) aligned 0 times
			        2095 (1.31%) aligned exactly 1 time
			        2789 (1.74%) aligned >1 times
			18.85% overall alignment rate

	* starting with `CATGAG` ("C1_3"):

			195286 reads; of these:
			  195286 (100.00%) were paired; of these:
			    194536 (99.62%) aligned concordantly 0 times
			    592 (0.30%) aligned concordantly exactly 1 time
			    158 (0.08%) aligned concordantly >1 times
			    ----
			    194536 pairs aligned concordantly 0 times; of these:
			      18 (0.01%) aligned discordantly 1 time
			    ----
			    194518 pairs aligned 0 times concordantly or discordantly; of these:
			      389036 mates make up the pairs; of these:
			        388512 (99.87%) aligned 0 times
			        243 (0.06%) aligned exactly 1 time
			        281 (0.07%) aligned >1 times
			0.53% overall alignment rate


* `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq`
	* starting with `AGACTC` ("RT", this is the best one):

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
			    157564 (97.35%) aligned concordantly 0 times
			    3415 (2.11%) aligned concordantly exactly 1 time
			    877 (0.54%) aligned concordantly >1 times
			    ----
			    157564 pairs aligned concordantly 0 times; of these:
			      207 (0.13%) aligned discordantly 1 time
			    ----
			    157357 pairs aligned 0 times concordantly or discordantly; of these:
			      314714 mates make up the pairs; of these:
			        313234 (99.53%) aligned 0 times
			        749 (0.24%) aligned exactly 1 time
			        731 (0.23%) aligned >1 times
			3.24% overall alignment rate

## Telomeres

Telomeric repeats do not occur often in the reads (commands written to [`telomeres.sh`](telomeres.sh)). 

Below are number of reads with at least three repeats (as counted by [`telomeres.py`](scripts/telomeres.py)):

* "PR_3" sample:
	* 0 repeats (summed from both paired reads): 93,499 reads
	* 1: 1,055
	* 2: 326
	* 3: 146
	* **4: 409**
	* **5: 79**
	* **6: 208**
* "RT" sample:
	* 0: 388,206
	* 1: 14,565
	* 2: 2,759
	* 3: 48
	* **4: 26**
	* **6: 2**
	* **9: 1**
	* **14: 1**
* `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq` with no barcodes:
	* 0: 41,574
	* 1: 749
	* 2: 95
	* 3: 2
	* **11: 1**
	* **26: 1**

## Adapters

We checked if the reads contain adapter sequences, indicative of dimer formation (commands written to [`adapters.sh`](adapters.sh)).

Statistics for the samples:

* `B_SCBLESS_C1_3_PR_3_S1_L001_R1_D4VBN.fastq`:
	* starting with `AGACTC` ("PR_3"):
		* 41,145 (43.0%) reads have index 12 (rev complement) in R1
	* starting with `CATGAG` ("C1_3"):
		* 170,865 (87.5%) reads have index 12 (rev complement) in R1
* `B_SCBLESS_NB_3_RT_S2_L001_R1_D4VBN.fastq`:
	* starting with `AGACTC` ("RT"):
		* 118,774 (29.3%) reads have index 6 (rev complement) in R1
	* starting with `CATGAG` ("NB_3"):
		* 140,254 (86.7%) reads have index 6 (rev complement) in R1

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
