#!/bin/bash
[ ! -r "$1" ] && echo "Usage: "$(basename "$0")" path/to/file.sql">&2 && exit 1
docker exec -i app_db_1 sh -c 'exec mysql -uroot -pexample' < "$1"
