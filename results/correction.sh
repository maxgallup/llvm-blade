#!/bin/bash


# for file in 11-47-Bench*; do
# 	for i in `seq 3 5 100`; do sed -n '23,122p' $file | sed "${i}q;d" >> correction-$file.log; done
# done

















for file in 14-35-Bench*; do
	echo "------------------$file------------------" >> correction-$file.log
	for i in `seq 2 3 60`; do sed -n '3,62p' $file | sed "${i}q;d" >> correction-$file.log; done
done

for file in 14-35-Bench*; do
	echo "------------------$file------------------" >> correction-$file.log
	for i in `seq 1 2 40`; do sed -n '64,103p' $file | sed "${i}q;d" >> correction-$file.log; done
done

for file in 14-35-Bench*; do
	echo "------------------$file------------------" >> correction-$file.log
	for i in `seq 1 2 40`; do sed -n '105,144p' $file | sed "${i}q;d" >> correction-$file.log; done
done

for file in 14-35-Bench*; do
	echo "------------------$file------------------" >> correction-$file.log
	for i in `seq 1 3 60`; do sed -n '147,206p' $file | sed "${i}q;d" >> correction-$file.log; done
done

