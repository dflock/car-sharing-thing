#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

now=$(date +%F-%T)
count=$(cat "$DIR"/cars.json | grep 'Cars' | wc -l)

echo "$now	$count" >> "$DIR"/car-count-log.tsv
