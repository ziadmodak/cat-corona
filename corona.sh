#!/bin/sh

COUNTRYCODE=$1

curl --silent https://corona-stats.online/$COUNTRYCODE?source=2 | sed -e :a -e '$d;N;2,10ba' -e 'P;D' > ~/.cache/corona
cat ~/.cache/corona
