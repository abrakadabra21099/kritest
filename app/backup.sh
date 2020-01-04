#!/bin/bash
dt="$(date +%F-%H%M)"
docker exec app_db_1 sh -c 'exec mysqldump -uroot -pexample --routines --databases kritest' > "${PWD}/backups/kritest-$dt.sql"
docker exec app_db_1 sh -c 'exec mysqldump -uroot -pexample --all-databases' > "${PWD}/backups/all-databases-$dt.sql"
pushd ${PWD}/backups/ && \
ln -sf kritest-$dt.sql kritest-latest.sql && \
ln -sf all-databases-$dt.sql all-databases-latest.sql && \
popd
