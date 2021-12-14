#!/usr/bin/env nextflow



Channel.value("test-datasets/reference/chr1.gtf")
    .set{ ch_gtf }

ch_gtf.view()
ch_gtf.view()
