#!/bin/bash
# Fehlerhafte Variablenzuweisung
var1 = "Hallo Welt"  # Falsche Syntax: keine Leerzeichen um das '='
# Fehlerhafte Schleife
for i in $(seq 1 5)
do
  echo "Zahl $i"
done
# Falsche Verwendung von Variablen
echo "Wert von var1: $var1"   # Unnötiger Leerraum
# Fehlerhafte Bedingung
if [ "$i" -gt 3 ]; then
  echo "i ist größer als 3"
fi
# Fehlerhafte Nutzung von test
if [ -z "$1" ]  # Fehlender 'then'
echo "Kein Argument angegeben"
fi
# Fehlerhafte Befehlsausführung
ls /nonexistent_directory  # Dieser Befehl schlägt fehl, wenn das Verzeichnis nicht existiert
# Fehlerhafte Arraysyntax
my_array=(1 2 3)
echo ${my_array[3]}  # Index 3 existiert nicht, da Indizes bei 0 beginnen
