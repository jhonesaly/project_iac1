# Explicando o script new_iac_basic

Este é um script em shell que cria diretórios, grupos de usuários e usuários com suas respectivas permissões em um sistema Linux. O objetivo do script é automatizar a criação desses diretórios e usuários, evitando erros humanos.

O script funciona da seguinte forma:

- Cria diretórios: /publico, /adm, /ven e /sec.
- Cria grupos de usuários: GRP_ADM, GRP_VEN e GRP_SEC.
- Cria usuários: carlos, maria, joão, debora, sebastiana, roberto, josefina, amanda e rogerio, atribuindo-os aos grupos correspondentes e com suas respectivas senhas criptografadas.
- Altera as permissões dos diretórios e seus donos.
