#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

now=$(date +%F-%T)
wget -q -O - https://bookit.modo.coop/api/fleet/cars | jq . > "$DIR"/cars-"$now".json
rm "$DIR"/cars.json
ln -s "$DIR"/cars-"$now".json "$DIR"/cars.json
