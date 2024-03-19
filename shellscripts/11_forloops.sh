#!/bin/bash

CONTADOR=0
for VAR1 in java .net python ruby ph
do
        CONTADOR=$((CONTADOR + 1))
        sleep 1
        echo
        echo "===============LOOPING=================="
        echo "Valor da variável $CONTADOR: $VAR1"
        echo
        date
        echo "========================================"
        echo
done
