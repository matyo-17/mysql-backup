#! /bin/bash
DB_NAME="database_name"
DIR_PATH="/path/to/backup/dir"

mkdir -p $DIR_PATH/data
mysqldump --defaults-extra-file=$DIR_PATH/backup.cfg --single-transaction --quick $DB_NAME | gzip > $DIR_PATH/data/$DB_NAME-$(date +%Y-%m-%d).sql.gz
