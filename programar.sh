#!/bin/bash
#
#       programador de bash de pingüino
#

RM="rm -rf"
PINGUINO="./pinguinobeta9-05.py"

PDE="$*"
FILE=$(basename "${PDE}" .pde)

DIR=$(basename "${PDE}")
HEX=$(echo $PDE | sed 's/\.pde$//g')

echo "Preparando las fuentes"

${RM} tmp/*
${RM} source/user.c
${RM} source/*.o

echo "Compilando ${PDE} ..."

$PINGUINO -nogui "${PDE}" 2> /dev/null

echo "Conectar el pinguino"

sleep 3

echo "Pasando los datos al pingüino..."

tools/bin/docker -q -v 04d8 write "$HEX.hex"

