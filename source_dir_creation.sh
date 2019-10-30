#!/bin/bash
if [ -z $1 ]
then 
	echo "Please tell the name of the folder and sources you want to create"
elif [ -z $2 ]
then
	echo "Please tell the folder where you want to create your $1 folder"
else
	echo "Create folder name \"$1\" in $2"
	mkdir -p $2/$1
	touch $2/$1/$1.c
	touch $2/$1/$1.h
fi
