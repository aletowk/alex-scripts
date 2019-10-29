#!/bin/bash

if [ -z $1 ]
then
	echo "Need 1 arguments"
elif  [ $# -eq 1 ]
then
	RES=`stat --printf="%s" $1`
	echo "Size of $1 : $RES Bytes"
else
	for var in "$@"
	do
		RES=`stat --printf="%s" $var`
		echo "Size of $var : $RES Bytes"
	done
fi
