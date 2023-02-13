# Desafio de Projeto 1 - Bootcamp de Linux

# Sumário

- [Proposta do Projeto](#Proposta-do-Projeto)
    - [Objetivos do Projeto](#Objetivos-do-Projeto)
    - [Requerimentos do Projeto](#Requerimentos-do-Projeto)
- [Organização do Repositório](#organização-do-repositório)
    - [iac_basic](#iac_basic)
    - [iac_advanced](#iac_advanced)
- [Definições Importantes](#Definições-Importantes)
- [Montando](#Montando)
- [Observações](#Observações)


# Proposta do Projeto

Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

## Objetivos do Projeto

criar um script onde toda a infraestrutura de usuários, grupos de usuários, diretórios e permissões serão criadas automaticamente. Será realizado o upload do arquivo de script no GitHub para futuras reutilizações do script. Sendo assim, toda nova máquina virtual que for iniciada já estará pronta para uso quando o script for executado.

## Requerimentos do Projeto

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


# Organização do repositório

## iac_basic

Script que seguirá estritamente aquilo que foi proposto pelo desafio, criando somente as pastas, usuários e grupos descritos nos requerimentos. 

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.

## iac_advanced

Script avançado, que utiliza lógica para permitir a generalização do script básico, permitindo que seja criado quaisquer pastas, usuários e grupos direto na linha de comando de maneira muito mais simplificada. 

Além disso, também é implementado o algoritmo que permite a exclusão de todas as pastas, grupos e usuários anteriores, se for de interesse do administrador. 

Tudo isso utilizando uma estrutura modularizada que permite maior flexibilidade e mais implementações no futuro.

Dentro da respectiva pasta há um outro README.md que explica detalhadamente o que o script faz.


# Definições Importantes

Infraestrutura como código (IaC) é o **gerenciamento** e provisionamento da infraestrutura por meio de **códigos**, em vez de processos manuais.

Com a IaC, são criados **arquivos de configuração** que incluem as especificações da sua infraestrutura, facilitando a edição e a distribuição de configurações. Ela também assegura o provisionamento do mesmo ambiente todas as vezes. 

Ao automatizar o provisionamento da infraestrutura com a IaC, os desenvolvedores não precisam provisionar e gerenciar manualmente servidores, sistemas operacionais, armazenamento e outros componentes de infraestrutura sempre que criam ou implantam uma aplicação.

# Montando

Esse tutorial leva em consideração que também está sendo utilizada uma máquina linux.Para utilizar os scripts na sua própria máquina, você pode fazer o seguinte:

Como root, vá para a raiz e, caso ainda não tenha uma pasta para receber o conteúdo, crie uma (ex: downloads)

    > cd /
    > mkdir downloads
    > cd downloads

Faça o download dos arquivos necessários no GitHub:

    > wget https://github.com/jhonesaly/project_iac1/archive/refs/heads/master.zip

Caso ainda sua máquina não tenha uma

Atribua a possibilidade de ler, editar e executar os arquivos na pasta project_iac:

    > chmod -R 775 project_iac1

Entre na pasta do projeto e abra o arquivo config.txt para definir o que será criado por meio do comando no prompt:

    > nano config.txt

Com tudo configurado, execute: 

    > ./new_iac.sh



# Observações

- Este script não foi testado em todas as distribuições Linux existentes. Recomenda-se testá-lo em um ambiente de teste antes de utilizá-lo em produção.
- Certifique-se de que os nomes de usuários e grupos não estejam duplicados em seu sistema antes de executar o script.
- A ideia é que o script permita que uma pessoa leiga em programação consiga criar a infraestrutura sem abrir o código, mas mesmo o script básico pode ser utilizado por um programador para criar diretamente aquilo que deseja alterando os parâmetros no código.

[Voltar ao topo](#sumário)