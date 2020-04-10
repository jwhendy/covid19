#!/bin/bash

PATH=/home/jwhendy/vault/personal/covid19
cd $PATH/mobility-report-data-extractor

while read code; do
#  /usr/bin/python ./mobius.py download $code
  /usr/bin/python ./mobius.py proc svgs/${code}.svg ./output ./config/dates_lookup_2020_04_05.csv
done < $PATH/lib/mobility-code-list.txt
