#!/bin/bash

db=database_name
dir=/vagrant/bak/sql
now=$(date +%Y-%m-%d-%H-%M-%S)

mysqldump -uroot -proot $db > $dir/$now-$db.sql
