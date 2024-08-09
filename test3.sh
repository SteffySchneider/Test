#!/bin/bash
echo "Dies ist ein fehlerfreies Skript"
for i in $(seq 1 10)
do
  echo "Nummer $i"
done
if [ "$i" -gt 5 ]; then
  echo "i ist größer als 5"
fi
