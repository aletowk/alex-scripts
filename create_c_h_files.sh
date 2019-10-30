#!/bin/bash
where=`pwd`
if [ -z $1 ]
then
	echo "Please tell the name of the c and h file you want (Both have the same name)"
else
	if [ -z $2 ]
	then
		source=$1.c
		header=$1.h
	else
		source=$2/$1.c
		header=$2/$1.h
	fi
	touch $source $header
	echo "Created $source and $header in $where"
fi	