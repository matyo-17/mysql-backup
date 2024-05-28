#! /bin/bash
DB_NAME="database_name"
mysqldump --defaults-extra-file=/path/to/backup.cfg --single-transaction --quick $DB_NAME | gzip > /path/to/backup/file/$DB_NAME-$(date +%Y-%m-%d).sql.gz