#!/bin/bash

echo "<<< Atualizando o sistema >>>"
apt-get update
apt-get upgrade -y

echo "<<< Instalando apache e unzip >>>"
apt-get install apache2 unzip -y

echo "<<< Baixando e copiando os arquivos do site para o servidor >>>"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "<<< Finalizado >>>"
