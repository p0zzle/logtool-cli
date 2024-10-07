#!/usr/bin/env bash

# basic boilerplate for CLI tool

function show_help() {
cat << EOF
Usage: ${0##*/} [-h] [-v] [-o OUTFILE] [FILE]...
This is a CLI tool template.
    -h          display this help and exit
    -v          display version information and exit
    -o OUTFILE  define this output file. Default is 'output.txt'
FILE is the name of the file to process.
EOF
}

# Initialize our own variables:
output_file="output.txt"
version="1.0.0"

while getopts "hvo:" opt; do
    case "$opt" in
    h)
        show_help
        exit 0
        ;;
    v)  echo "Version: $version"
        exit 0
        ;;
    o)  output_file=$OPTARG
        ;;
    esac
done

shift $((OPTIND-1))

# The rest of the script goes here. For now just echo output.
echo "output_file='$output_file', Remaining args: $@"