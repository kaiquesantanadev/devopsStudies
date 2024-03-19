#!/bin/bash

counter=0

while [ $counter -lt 6 ]; do
        echo
        echo "Volta do loop: $counter"
        echo
        sleep 1
        if [ $counter -eq 4 ]
        then
                echo "teste"
        fi
        counter=$((counter = counter +1))
done
