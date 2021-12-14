#!/usr/bin/env nextflow

Channel.fromFilePairs(params.input, checkIfExists: true)
       .set{ ch_reads }

process FASTQC{
    publishDir "./fastqc", mode: 'copy'

    input:
    tuple val(base), file(reads) from ch_reads

    output:
    tuple val(base), file("*.{html,zip}") into ch_multiqc

    script:
    """
    fastqc -q $reads
    """
}
