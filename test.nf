#!/usr/bin/env nextflow

params.foo = "String"
params.bar = 5

println params.foo.size()

process TEST{
        
    echo true
    publishDir "/home/harry-san/Downloads/nextflow_day2/rtp_workshop", mode:'copy'
    
    input:
    val(foo) from params.foo
    val(bar) from params.bar
    
    output:
    file("foobar.txt") into out

    script:
    """
    echo "Script body printing foo: $foo, bar: $bar" >> foobar.txt
    """
}
