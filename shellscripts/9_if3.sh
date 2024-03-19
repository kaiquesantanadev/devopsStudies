#!/bin/bash

valor=`ip a | grep -v LOOPBACK | grep -ic mtu`

if [ $valor -eq 1 ]
then
        echo "1 Interface de rede ativa encontrada"
elif [ $valor -gt 1 ]
then
        echo "Encontrada múltiplas interfaces de rede ativas"
else
        echo "Não foi encotnrada interfaces de rede"
fi
