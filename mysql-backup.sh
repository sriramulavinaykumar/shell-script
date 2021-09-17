#!/bin/bash
###############################################
#Created by Rahul
#updated by Vinay on 17th sep 2021
# -Printing message as per Jira ticket abc101
# Syntax -sh mybackup-sh <DB_NameIn Caps>
###############################################

echo "Provide mysql DB name to take backup.."

if [ $# -ne 1 ]; then
	echo "Failure :syntax to run the script is.."
	echo "sh $0 <DB_Name>"
	exit 1
else 
V_db_name=$1
v_pass=$(cat password)

echo "mysqldump -hhostname.rds.aws.com -umaster -pwelcome123 $v_db_name > $v_db_name.sql"
fi
