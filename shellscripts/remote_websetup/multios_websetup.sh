URL="https://www.tooplate.com/zip-templates/2130_waso_strategy.zip"
TEMPDIR="/tmp/webfiles"

# Verificação de distribuição de OS
if [ -f /etc/os-release ]; then
    . /etc/os-release
    if [ "$ID" == "centos" ] || [ "$ID" == "rhel" ] || [ "$ID" == "amzn" ]; then
        echo "Rodando CentOS/RHEL Setup"
        PACKAGES="wget unzip httpd"
        SVC="httpd"
        sudo yum install $PACKAGES -y > /dev/null
    elif [ "$ID" == "ubuntu" ]; then
        echo "Rodando Ubuntu Setup"
        PACKAGES="wget unzip apache2"
        SVC="apache2"
        sudo apt-get update > /dev/null
        sudo apt-get install $PACKAGES -y > /dev/null
    else
        echo "Distribuição não suportada."
        exit 1
    fi
else
    echo "Arquivo /etc/os-release não encontrado. Não é possível determinar a distribuição."
    exit 1
fi

# Iniciando serviços
sudo systemctl start $SVC
sudo systemctl enable $SVC

# Download e configuração do site
echo "Baixando e configurando o site..."
mkdir -p $TEMPDIR
cd $TEMPDIR
wget $URL > /dev/null
unzip 2130_waso_strategy.zip
sudo cp -r 2130_waso_strategy/* /var/www/html
sudo systemctl restart $SVC

# Limpeza
echo "Removendo arquivos temporários..."
rm -rf $TEMPDIR

echo "Instalação e configuração concluídas com sucesso."

