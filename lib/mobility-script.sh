#!/bin/bash

PATH=/home/jwhendy/vault/personal/covid19
cd $PATH/mobility-report-data-extractor
date='2020-04-05'

while read code; do
  # /usr/bin/python ./mobius.py download $code $date
  /usr/bin/python ./mobius.py proc svgs/${code}_${date}.svg ./output ./config/dates_lookup_2020_04_05.csv
done < $PATH/lib/mobility-code-list.txt
