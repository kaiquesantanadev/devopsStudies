#!/bin/bash

USUARIOS="kaique tinny igor"

for usr in $USUARIOS
do
        useradd $usr
        id $usr
done
