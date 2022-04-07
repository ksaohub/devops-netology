#!/bin/bash
# display command line options

count=1
while [[ -n "$1" ]]; do
    echo "Next parameter: $param"
    count=$(( $count + 1 ))
    shift
done