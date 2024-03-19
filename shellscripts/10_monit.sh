#!/bin/bash

ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
        echo "========================================"
        echo
        echo "Serviço httpd está rodando com sucesso."
        date
        echo
        echo "========================================"
else
        echo "========================================"
        echo
        echo "Serviço httpd não está rodando no momento."
        date
        echo "Startando serviço httpd."
        systemctl start httpd
        if [ $? -eq 0 ]; then
                echo "O serviço httpd foi startado com sucesso!"
                echo
                echo "========================================"
                echo
        else
                echo "Não foi possível startar o serviço. Entre em contato com o administrador"
                echo
        fi
fi

