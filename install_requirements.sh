#!/bin/bash

if which pip3; then
    pip3 install -r requirements.txt
else
    echo "pip3 could not be found. Exiting."
    exit 1
fi

curl https://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de435.bsp -o de435.bsp

res=$?
if test "$res" != "0"; then
   echo "the curl command failed with: $res"
fi