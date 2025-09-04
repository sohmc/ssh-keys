#!/bin/bash

AUTH_FILE=null

if [[ -z ${ENV_AUTH_FILE+x} ]]; then
    AUTH_FILE=~/.ssh/authorized_keys
else
    echo "Environment variable ENV_AUTH_FILE set."
    AUTH_FILE=${ENV_AUTH_FILE}
fi

echo "Copying keys to ${AUTH_FILE}"

if [[ -e ${AUTH_FILE} ]]; then
    echo Removing existing authorized keys file
    rm -rf ${AUTH_FILE}
fi

if [[ -d ./ssh-public_keys/ ]]; then
    for k in `ls ./ssh-public_keys/*.pub`; do
        echo Adding ${k}
        cat ${k} >> ${AUTH_FILE}
        echo -e "\n" >> ${AUTH_FILE}
    done

    echo "Removing empty lines"
    sed -i '/^$/d' ${AUTH_FILE}

    echo "Chmod 600"
    chmod 600 ${AUTH_FILE}
fi
