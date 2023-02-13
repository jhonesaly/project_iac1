#!/bin/bash

## Excluir diretórios, arquivos, grupos e usuários criados anteriormente

## Excluir todos os usuários, exceto o usuário root
printf "\nExcluindo usuários...\n"

for user in $(ls /home); do
  if [ $user != "root" ]; then
    sudo userdel -rf $user 2> /dev/null
  fi
done

## Excluir todos os grupos com id superior a 999 e menor que 1100
printf "\nExcluindo grupos...\n"

for group in $(cut -d: -f1 /etc/group); do
  id=$(getent group $group | cut -d: -f3)
  if [ $id -gt 999 ] && [ $id -lt 1100 ]; then
    if [ $group != "sync" ]; then
      sudo groupdel -f $group
    fi
  fi
done

## Excluir todas as pastas
printf "\nExcluindo pastas...\n"

### Procurar diretório com nome que contém "directories"
dir=$(find / -type d -name "*_directories" 2>/dev/null)

### Verificar se o diretório foi encontrado
if [ -z "$dir" ]; then
  printf "\nDiretório de empresa anterior não encontrado.\n"
else
  ### Excluir o diretório
  sudo rm -rf $dir
fi

for user in $(ls /home); do
  sudo rm -rf /home/$user
done

## Adicionando novo usuário administrador

printf "\nAdicionando novo usuário administrador...\n"

read -p "Digite o nome do novo usuário administrador: " user_adm
adduser $user_adm
usermod -aG sudo $user_adm