#!/bin/bash
#
#       Instalacion de las reglas
#

echo "esto va a instalar las reglas para el kernel 2.6 en adelante"
echo
echo "cambiando permisos"

chmod 777 tools/bin/*

echo "Copiando regla nuevas"

cd nuevas_reglas
su -c "cp *.rules /etc/udev/rules.d/"
