#!/bin/bash

echo "####################"
echo
echo "INSTALANDO WEBSERVER"
echo
echo "####################"
echo


echo "####################"
echo "INSTALANDO DEPENDENCIAS"
echo "####################"

sudo yum install wget unzip httpd -y > /dev/null #Installing dependencies

sudo systemctl start httpd
sudo systemctl enable httpd


echo
echo "####################"
echo "DEPENDENCIAS INSTALADAS COM SUCESSO"
echo "####################"
echo


echo "####################"
echo "CRIANDO ARQUIVOS TEMPORARIOS DO SITE"
echo "####################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip > /dev/null #Cloning the website page
unzip 2130_waso_strategy.zip
cp -r 2130_waso_strategy/* /var/www/html #Setting the website page to httpd default


echo
echo "RESTARTANDO SERVIÇO"
sudo systemctl restart httpd #Restarting web service
echo
echo "REMOVENDO ARQUIVOS TEMPORARIOS"
rm -rf /tmp/webfiles #Removing temp files

sudo systemctl restart httpd
echo
echo "PRONTO BY KAIQUERAS DEVOPS:"
