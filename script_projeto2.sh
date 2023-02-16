#!/bin/bash

echo "Atualizando o Servidor"

apt-get update -y
apt-get upgrade -y

echo "Instalar o Apache2"
apt-get install apache2 -y

echo "Instalar o unzip" -y
apt-get install unzip -y

echo "Entrando no diretorio tmp"
cd /tmp

echo "Baixando o Arquivo de Aplicacao disponivel"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o Arquivo"
unzip main.zip

echo "Abrindo o Direrotio Linux-site-dio"
cd linux-site-dio-main

echo "Copiar para a pasta padrao do Apache"
cp -R * /var/www/html/


echo "Fim do Script ..."

