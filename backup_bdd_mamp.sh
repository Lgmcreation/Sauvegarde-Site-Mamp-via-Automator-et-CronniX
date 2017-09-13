#! /bin/sh
DBPASS="root"
DBUSER="root"
DBHOST="localhost"
BACKUPDIR="/Users/Thomas/........./2.BDD"

for database in `/Applications/MAMP/Library/bin/mysql --user=$DBUSER --password=$DBPASS --host=$DBHOST -e "SHOW DATABASES;" |grep -v "performance_schema\|information_schema\|mysql\|Database" | cut -d " " -f 1`;
do


if [ ! -d "/Users/Thomas/............./2.BDD/$database" ];then
mkdir /Users/Thomas/.........../2.BDD/$database
fi

	/Applications/MAMP/Library/bin/mysqldump --user=$DBUSER --password=$DBPASS --host=$DBHOST --opt $database > $BACKUPDIR/$database/$(date +%Y-%m-%d-%Hh%M)-$database-ddb.sql;

	find $BACKUPDIR/$database -mtime +30 -exec rm {} \;

	sleep 1;

done;