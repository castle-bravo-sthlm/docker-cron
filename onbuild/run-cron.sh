#!/bin/bash

CRON_TMP=/tmp/cronjobs
CRON_TMP_FILES=$CRON_TMP/*

for TMP_FILE in $CRON_TMP_FILES
do
  echo "Moving $TMP_FILE to /etc/cron.d/${TMP_FILE##*/}"
  env | cat - $TMP_FILE > /etc/cron.d/${TMP_FILE##*/}
done

touch /var/log/cron.log

cron && tail -f /var/log/cron.log
