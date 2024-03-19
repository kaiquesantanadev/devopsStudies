usr='devops'

for host in `cat remhosts`; do
        echo "============================================================================"
        echo
        echo "Conectando ao $host ..."
        echo
        echo "Transferindo arquivos de configuração de instalação..."
        echo
        scp multios_websetup.sh $usr@$host:/tmp/
        echo
        echo "Arquivos transferidos com sucesso!"
        echo
        echo "Executando arquivos de instalação..."
        echo
        ssh $usr@$host sudo /tmp/multios_websetup.sh
        sudo rm -rf /tmp/multios_websetup.sh
        echo
        echo "============================================================================"
done
