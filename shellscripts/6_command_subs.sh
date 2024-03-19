#!/bin/bash

echo
echo "Bem vindo usuário $USER na máquina $HOSTNAME"
echo

FREE_RAM=`free m | grep Mem | awk '{print $4}'`
LOAD=`uptime | awk '{print $9}'`

ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

echo
echo "Memória RAM disponível: $FREE_RAM"
echo
echo "Load average: $LOAD"
echo
echo "Espaço livre no partimento ROOT: $ROOTFREE"

