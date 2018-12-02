#!/bin/bash

walls=$(wpg -l);

for wal in ${walls[@]}; do
	wpg -s $wal;
	sleep 0.8;
done
