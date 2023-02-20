#1/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p ${SCRIPT_DIR}/database
touch ${SCRIPT_DIR}/database/database.sqlite
touch ${SCRIPT_DIR}/database/database.sqlite-shm
touch ${SCRIPT_DIR}/database/database.sqlite-wal