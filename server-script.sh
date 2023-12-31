#!/bin/bash

echo "Aguarde enquanto o servidor está atualizando"

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

cd /tmp

echo "Baixando e copiando os arquivos da aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html/
