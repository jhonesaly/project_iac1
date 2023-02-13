# Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

# Sumário


- [Objetivos](#Objetivos)
    - [Requerimentos](##Requerimentos)
- [Organização](#Organização)
    - [iac_basic](##iac_basic)
    - [iac_advanced](##iac_advanced)
- [Montando](#Montando)
- [Definições](#Definições)


# Objetivos

criar um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Será realizado o upload do arquivo de script no GitHub para futuras reutilizações do script. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.

## Requerimentos

Diretórios:

- /publico
- /adm
- /ven
- /sec

Grupos (explicação):

- 1: GRP_ADM (administrativo)
- 2: GRP_VEN (vendas)
- 3: GRP_SEC (secretariado)

Usuários (grupo):

- carlos (1)
- maria (1)
- joao (1)
- debora (2)
- sebastiana (2)
- roberto (2)
- josefina (3)
- amanda (3)
- rogerio (3)

# Organização

## iac_basic

## iac_advanced

# Montando

Como root, vá para a raiz e crie uma pasta para receber os arquivos necessários

    > cd /
    > mkdir downloads
    > cd downloads

Faça o download dos arquivos necessários no GitHub:

REESCREVER!###########################################

    > wget https://raw.githubusercontent.com/jhonesaly/linux-study/master/project_iac/config.txt
    > wget https://raw.githubusercontent.com/jhonesaly/linux-study/master/project_iac/new_iac.sh

REESCREVER!###########################################

Atribua a possibilidade de ler, editar e executar os arquivos na pasta project_iac:

    > chmod -R 775 project_iac

Entre na pasta do projeto e abra o arquivo config.txt para definir o que será criado por meio do comando no prompt:

    > nano config.txt

Com tudo configurado, execute: 

    > ./new_iac.sh

# Definições

Infraestrutura como código (IaC) é o **gerenciamento** e provisionamento da infraestrutura por meio de **códigos**, em vez de processos manuais.

Com a IaC, são criados **arquivos de configuração** que incluem as especificações da sua infraestrutura, facilitando a edição e a distribuição de configurações. Ela também assegura o provisionamento do mesmo ambiente todas as vezes. 

Ao automatizar o provisionamento da infraestrutura com a IaC, os desenvolvedores não precisam provisionar e gerenciar manualmente servidores, sistemas operacionais, armazenamento e outros componentes de infraestrutura sempre que criam ou implantam uma aplicação.