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