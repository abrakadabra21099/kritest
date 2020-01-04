#!/bin/bash
docker exec app_db_1 sh -c 'exec mysqldump -uroot -pexample --routines --databases kritest' > "${PWD}/backups/kritest-$(date +%F-%H%M).sql"
docker exec app_db_1 sh -c 'exec mysqldump -uroot -pexample --all-databases' > "${PWD}/backups/all-databases-$(date +%F-%H%M).sql"
