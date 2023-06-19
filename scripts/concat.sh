#!/bin/bash

for file in *_test.c ; do

	echo "concating: $file"

	TARGET=$(echo $file | awk -F "_" '{print $1}').c

	

	cat $file >> $TARGET
	rm $file

done

