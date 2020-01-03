#!/bin/bash
docker exec app_db_1 sh -c 'exec mysqldump --all-databases -uroot -pexample' > "${PWD}/backups/all-databases-$(date +%F-%H%M).sql"
