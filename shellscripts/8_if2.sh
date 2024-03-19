#!/bin/bash

echo "==================="
echo "LEITOR DE NUMEROS"
echo "==================="
echo

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
        echo "CONDIÇÃO VERDADEIRA"
        sleep 2
        echo "Seu número é maior que 100. Seu número é $NUM"
        echo
        uptime
        echo
else
        echo "Seu número é menor que 100. Seu número é $NUM"
fi
