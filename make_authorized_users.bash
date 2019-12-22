#!/bin/bash

AUTH_FILE=~/.ssh/authorized_keys

if [[ -e ${AUTH_FILE} ]]; then
    echo Removing existing authorized keys file
    rm -rf ${AUTH_FILE}
fi

if [[ -d ./public_keys/ ]]; then
    for k in `ls ./public_keys/*.pub`; do
        echo Adding ${k}
        cat ${k} >> ${AUTH_FILE}
        echo -e "\n" >> ${AUTH_FILE}
    done

    echo "Removing empty lines"
    sed '/^$/d' ${AUTH_FILE}

    echo "Chmod 600"
    chmod 600 ${AUTH_FILE}
fi


