#!/bin/bash

    GREEN='\033[0;32m'
    NC='\033[0m'

## 0 - Saudação

    printf "\n${GREEN}Iniciando protocolo new_iac...${NC}\n"
    printf "\n${GREEN}Em caso de dúvida, consulte a documentação disponível em <https://github.com/jhonesaly/project_iac1>${NC}\n"

## 1 - Chama o script que exclui antigos diretórios, arquivos, grupos e usuários anteriores

    while true; do

        read -n 1 -p "Deseja apagar todos os diretórios, grupos e usuários anteriores? [y/n] " ans_b1

        if [ $ans_b1 = "y" ]; then
            ./modules/exclude_past_gud.sh
            break

        elif [ $ans_b1 = "n" ]; then
            printf "\n...\n"
            break

        else
            printf "\nDigite um comando válido.\n"
            continue

        fi

    done

## 2 - Chama o script que criar novos diretórios, grupos e usuários

    while true; do

        read -n 1 -p "Deseja criar novos diretórios, grupos e usuários? [y/n] " ans_b2

        if [ $ans_b2 = "y" ]; then
            ./modules/create_new_gud.sh
            break

        elif [ $ans_b2 = "n" ]; then
            printf "\n...\n"
            break

        else
            printf "\nDigite um comando válido.\n"
            continue

        fi

    done

## 3 - Fim

    printf "\n${GREEN}Finalizado.${NC}\n"