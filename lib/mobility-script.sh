#!/bin/bash

PATH=/home/jwhendy/vault/personal/covid19
cd $PATH/mobility-report-data-extractor

while read code; do
  #/usr/bin/python ./mobius.py download -p $code
  /usr/bin/python ./mobius.py proc svgs/${code}.svg ./output
  #/usr/bin/python ./mobius.py full pdfs/${code}.pdf svgs/${code}.svg ./output
done < $PATH/lib/mobility-code-list.txt
