#!/bin/bash

PATH=/home/jwhendy/vault/personal/covid19
cd $PATH/mobility-report-data-extractor
Y="2020"
M="04"
D="05"
date=${Y}-${M}-${D}

echo $date

while read code; do
  /usr/bin/python ./mobius.py download $code $date
  #/usr/bin/python ./mobius.py proc svgs/${code}_${date}.svg ./output ./config/dates_lookup_2020_04_05.csv
  /usr/bin/python ./mobius.py full -d ./config/dates_lookup_${Y}_${M}_${D}.csv pdfs/${code}_${date}.pdf svgs/${code}_${date}.svg ./output
done < $PATH/lib/mobility-code-list.txt
