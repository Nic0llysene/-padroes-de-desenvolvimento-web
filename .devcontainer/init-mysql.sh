#!/bin/bash

# Se der ero o script é abortado
set -e

# Exibe uma mensagem no terminal 
echo "Iniciando MySQL..."
service mysql start

# Fica pingando o MySQL até ele responder
echo "Aguardando MySQL ficar pronto..."
for tentativa in $(seq 1 30); do
    if mysqladmin ping --silent; then
        echo "MySQL pronto."
        break
    fi
    sleep 1
done

# Se passou das 30 tentativas sem resposta, para o script com erro.
if ! mysqladmin ping --silent; then
    echo "Erro: MySQL não respondeu a tempo." >&2
    exit 1
fi

echo "Configurando banco..."

# Envia os comandos a seguir para o MySQL
mysql <<EOF
CREATE DATABASE IF NOT EXISTS ecommerce
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'nicolly'@'%' IDENTIFIED BY 'Ni123@';

GRANT ALL PRIVILEGES ON ecommerce.* TO 'nicolly'@'%';

FLUSH PRIVILEGES;
EOF

echo "MySQL configurado com sucesso!"
