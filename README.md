# Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

# Sumário

- Objetivos do projeto
- Organização do repositório
    - iac_basic
    - iac_advanced
- 

# Definição

Infraestrutura como código (IaC) é o **gerenciamento** e provisionamento da infraestrutura por meio de **códigos**, em vez de processos manuais.

Com a IaC, são criados **arquivos de configuração** que incluem as especificações da sua infraestrutura, facilitando a edição e a distribuição de configurações. Ela também assegura o provisionamento do mesmo ambiente todas as vezes. 

Ao automatizar o provisionamento da infraestrutura com a IaC, os desenvolvedores não precisam provisionar e gerenciar manualmente servidores, sistemas operacionais, armazenamento e outros componentes de infraestrutura sempre que criam ou implantam uma aplicação.

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


# Explicando o script

Protocolo new_iac

Este é um script em shell que cria diretórios, grupos de usuários e usuários com suas respectivas permissões em um sistema Linux. O objetivo do script é automatizar a criação desses diretórios e usuários, evitando erros humanos.

O script funciona da seguinte forma:

Cria diretórios: /publico, /adm, /ven e /sec.
Cria grupos de usuários: GRP_ADM, GRP_VEN e GRP_SEC.
Cria usuários: carlos, maria, joão, debora, sebastiana, roberto, josefina, amanda e rogerio, atribuindo-os aos grupos correspondentes e com suas respectivas senhas criptografadas.
Altera as permissões dos diretórios e seus donos.
Pré-requisitos
Para executar este script, é necessário ter um sistema operacional Linux instalado. É recomendável executar o script como superusuário ou com privilégios de sudo.

Como usar
Faça o download do script para sua máquina Linux.
Abra um terminal e execute o comando bash nome_do_script.sh. Se o script não tiver permissão de execução, utilize o comando chmod +x nome_do_script.sh para conceder a permissão.
Aguarde até o final da execução do script.
Observações
Este script não foi testado em todas as distribuições Linux existentes. Recomenda-se testá-lo em um ambiente de teste antes de utilizá-lo em produção.
Certifique-se de que os nomes de usuários e grupos não estejam duplicados em seu sistema antes de executar o script.
O script define as permissões como 770 para os diretórios /adm, /ven e /sec, e 777 para o diretório /publico. Caso queira utilizar permissões diferentes, edite o script antes de executá-lo.

# Rodando na sua máquina

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