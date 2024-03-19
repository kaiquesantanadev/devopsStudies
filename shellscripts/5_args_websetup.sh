#!/bin/bash


PACKAGES="wget unzip httpd"
SVC="httpd"
# URL="https://www.tooplate.com/zip-templates/2130_waso_strategy.zip"
TEMPDIR="/tmp/webfiles"

echo "####################"
echo
echo "INSTALANDO WEBSERVER"
echo
echo "####################"
echo


echo "####################"
echo "INSTALANDO DEPENDENCIAS"
echo "####################"

sudo yum install $PACKAGES -y > /dev/null #Installing dependencies
sudo systemctl start $SVC
sudo systemctl enable $SVC


echo
echo "####################"
echo "DEPENDENCIAS INSTALADAS COM SUCESSO"
echo "####################"
echo


echo "####################"
echo "CRIANDO ARQUIVOS TEMPORARIOS DO SITE"
echo "####################"
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $1 > /dev/null #Cloning the website page
unzip $2.zip
cp -r $2/* /var/www/html #Setting the website page to httpd default


echo
echo "RESTARTANDO SERVIÇO"
sudo systemctl restart $SVC #Restarting web service
echo
echo "REMOVENDO ARQUIVOS TEMPORARIOS"
rm -rf $TEMPDIR #Removing temp files

sudo systemctl restart $SVC
echo
echo "PRONTO BY KAIQUERAS DEVOPS:"
