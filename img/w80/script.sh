#!/bin/bash

for dir in *;
do
	TEST=$(echo $dir | sed -e 's/ //g')
	mv "$dir" "$TEST"
done
