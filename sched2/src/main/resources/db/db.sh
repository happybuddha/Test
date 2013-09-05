#!/bin/sh
#################################################################
# Create database						#
#################################################################
create_db()
{
	echo "Creating database $db"
	mysqladmin create $db
	${mysql_conn} --force < fiftypDB.sql
	${mysql_conn} --force < mm_scipt.sql
	${mysql_conn} --force < themes.sql
}

#################################################################
# Change to the current dir					#
#################################################################
cd `dirname $(readlink -f $0)`

#################################################################
# Process the command line to get a database name, or use	#
# fiftypdb by default						#
#################################################################
db=$1

if [ "$db" = "" ]
then
	db=fiftypdb
fi

saved_db_path="/backups/builds/db-${db}"
mkdir -p ${saved_db_path}

#################################################################
# Setup mysql command						#
#################################################################
mysql_conn="mysql -D $db"

#################################################################
# Verify the database exists, and if it doesn't, then create	#
# it								#
#################################################################
dbExists=0
for dbs in `mysql -e "show databases"`
do
	if [ "$db" = "$dbs" ]
	then
		echo "$dbs databse found, checking for updates to run..."
		dbExists=1
		break
	fi
done

if [ $dbExists -eq 0 ]
then
	create_db
fi

#################################################################
# Verify the system_info table exists				#
#################################################################
system_infoExists=`${mysql_conn} -e "show tables" | grep -c system_info`
if [ "$system_infoExists" = "0" ]
then
	echo "Creating the system_info table..."
	${mysql_conn} -e "create table system_info ( db_version varchar(10) )"
	${mysql_conn} -e "insert into system_info values ('0.00')"
fi

#################################################################
# Get the database version					#
#################################################################
version=`${mysql_conn} -N -e "select db_version from system_info"`
echo "Current version of the DB is ${version}"
	
#################################################################
# Database scripts to run					#
#################################################################
foundBase=0

#We are at the base version of the db, so we need to run all DB updates
if [ $version = "0.00" ]
then
	foundBase=1
fi

for updates in `ls updates | sort -t "_" -n -k3 -k4`
do
	fileVersion=`echo $updates | awk -F_ {'print $3 "." $4'} | sed s/\.sql//g`
	echo "Comparing ${fileVersion} and ${version}"
	if [ "$fileVersion" = "$version" -a !$foundBase ]
	then
		foundBase=1
		if [ -e ${saved_db_path}/${updates} -a ${version} != "0.00" ]
		then
			echo "Checking for differences in last db script executed..."
			diff -B updates/${updates} ${saved_db_path}/${updates} | grep "^< " | sed 's/^< //g' > ${saved_db_path}/differences.sql
			isDifferences=`wc -l ${saved_db_path}/differences.sql | awk {'print $1'}`
			if [ $isDifferences -gt  0 ]
			then
				echo "Found updates to ${updates}. Executing them..."
				${mysql_conn} --force < ${saved_db_path}/differences.sql
			else
				echo "No differences found"
			fi
		fi
		cp -f updates/${updates} ${saved_db_path}
	elif  [ $foundBase -eq 1 ]
	then
		echo "Running update: $updates"
		${mysql_conn} --force < updates/${updates}
		${mysql_conn} -e "update system_info set db_version='$fileVersion'"
	fi
done
