#!/bin/sh

COUNTRYCODE=$1

curl --silent https://corona-stats.online/$COUNTRYCODE?source=2 | head -n -9 > ~/.cache/corona
cat .cache/corona
