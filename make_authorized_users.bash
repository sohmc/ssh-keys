#!/bin/bash

AUTH_FILE=~/.ssh/authorized_keys

if [[ -z ${ENV_AUTH_FILE+x} ]]; then
    AUTH_FILE=${ENV_AUTH_FILE}
    echo "AUTH_FILE set to ${AUTH_FILE}"
fi

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
    sed -i '/^$/d' ${AUTH_FILE}

    echo "Chmod 600"
    chmod 600 ${AUTH_FILE}
fi


