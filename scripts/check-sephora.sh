#!/bin/env bash

no_stock="out of stock";

function check() 
{
	no_stock="$(curl -A "Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0" \
		$1 -L -k -s -b \
		xdVisitorId=1060bqMTEU0Ugz5r2S8ZDBdTFKZ7Kz4iMwAxk5og8BHHEZcAA9C \
		| grep -Eio "We are so sorry the bears are running late.")";
}

while [[ $no_stock ]]; do
	echo "checking: $1"
	check $1;
	echo $no_stock;
	sleep 10;
done
