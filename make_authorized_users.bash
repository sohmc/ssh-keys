#!/bin/bash

if [[ -e authorized_keys ]]; then
    echo Removing existing authorized keys file
    rm -rf authorized_keys
fi

if [[ -d ./public_keys/ ]]; then
    for k in `ls ./public_keys/*.pub`; do
        echo Adding ${k}
        cat ${k} >> authorized_keys
    done
fi


