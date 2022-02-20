#!/bin/bash
file='./node_modules/@hanchon/ethermint-address-converter/lib/converter.js'
if [[ `uname  -a` =~ "Darwin" ]];then
    sed -i "" "s/ethm/uptick/g" $file
else
    sed -i  "s/ethm/uptick/g" $file
fi
