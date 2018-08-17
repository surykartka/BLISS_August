from __future__ import print_function
from Bio import SeqIO
import os

def count_telo(seq, telomeres=['TTAGGG', 'CCCTAA']):
	"""Return number of telomeric repeats found in seq, forward or reverse complement.
	Do not assume direction of reads."""
	n = 0
	for telo in telomeres:
		m = seq.count(telo)
		if m > n:
			n = m
	return n

if __name__ == '__main__':
	# directory with fasta sequences of reads
	fasta_dir = 'barcodes_fasta'
	
	for file in os.listdir(fasta_dir):
		if file.endswith('fasta') and '_R1' in file:

			# count telomeric repeats from both paired reads
			full_path_R1 = os.path.join(fasta_dir, file)
			full_path_R2 = os.path.join(fasta_dir, file.replace('_R1', '_R2'))

			# count repeats in R1
			seq2count = {}
			for rec in SeqIO.parse(open(full_path_R1), 'fasta'):
				n_telo = count_telo(rec.seq)
				seq2count[rec.id] = n_telo

			# and add numbers of repeats from R2
			for rec in SeqIO.parse(open(full_path_R2), 'fasta'):
				n_telo = count_telo(rec.seq)
				if rec.id in seq2count:
					seq2count[rec.id] += n_telo
				else:
					seq2count[rec.id] = n_telo

			# make histogram
			counts = {}
			for seq, n_telo in seq2count.items():
				counts[n_telo] = counts.get(n_telo, 0) + 1

			# and print results for at least 3 repeats
			if max(counts) > 2:
				print('*', file)
				for c in sorted(counts):
					print('\t* %d: %d' % (c, counts[c]))
