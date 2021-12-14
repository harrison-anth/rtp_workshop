#!/usr/bin/env nextflow
Channel.fromFilePairs("test-datasets/fastq/*_{1,2}.fastq.gz", checkIfExists: true)
	.set{ ch_reads }
ch_reads.view()
