# Shell Script Studies Repository

Este repositório contém uma coleção de scripts em shell script, desde os básicos até scripts de automação de DevOps. Os scripts variam desde tarefas simples até automações complexas para facilitar a vida dos desenvolvedores e administradores de sistemas.




## Como Utilizar

Clone o repositório para sua máquina local utilizando o seguinte comando:

```bash
git clone https://github.com/seu-usuario/repo-shell-script.git
```

## Scripts Disponíveis

### Scripts Básicos

1. `1_firstscript.sh`: Um simples script que exibe informações do sistema, como memória e disco disponíveis.
2. `2_websetup.sh`: Um script que instala e configura automaticamente um servidor web httpd. Utilizando um template como home da página.
3. `3_variables_websetup.sh`: Uma versão melhorada do script `2_websetup.sh`, utilizando variáveis na criação do script.
4. `4_args.sh`: Script básico de introdução a argumentos em bash script.
5.  `5_args_websetup_sh`: Versão customizada do script para criar website (`3_variables_websetup.sh`). Este script leva 2 paramêtros para criar o servidor web: O link de onde está o código à ser instalado, e o nome do arquivo em zip que vai ser extraído do download feito.
6. `6_command_subs.sh`: Script para estudos de comandos serem embutidos via variáveis no shell.
7. `7_if1.sh`: Primeiro script para estudo de estruturas de condição no shell.
8. `8_if2.sh`: Continuação dos estudos de estrutura de condição com shell script.
9. `9_if2.sh`: Continuação dos estudos de estrutura de condição com shell script.
10. `10_monit.sh`: Primeiro arquivo de monitoração criado. Esse arquivo monitora se o serviço httpd está online.
    - Além disso, foi criado uma configuração no `crontab -e` para jogar a resposta do arquivo em um arquivo de log de monitoramento.
11. `11_forloops.sh`: Primeiro arquivo para estudos de estrutura de repetição no shell.
12. `12_userloops.sh`: Continuação de estudos de estrutura de repetição no shell.
13. `13_while.sh`: Aprofundando nos estudos de estrutura de repetição utilizando o while.

### Automação de servidor web para multiVMs (/remote_websetup)

1. `remhosts`: Arquivo com o nome dos hosts das VMs que serão configuradas
2. `multios_websetup.sh`: Arquivo de instalação e configuração do servidor web. Este script também checa a distribuição linux da VM, mudando o procedimento de acordo com a distribuição utilizada.
3. `webdeploy.sh`: Arquivo responsável por fazer a conexão com as VMs, transferir o arquivo de configuração `multios_websetup.sh` para as mesmas e executá-las através de um for loop baseado no `remhosts`.

**OBS**: É importante lembrar que previamente foram inseridas e configuradas nas VMs um usuário chamado devops com permissão **sudoer**. Além de inserir e configurar chaves SSH para efetuar a conexão com sucesso entre as máquinas.

