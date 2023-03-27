#!/bin/bash

sudo apt-get update

#ifconfig
if command -v ifconfig >/dev/null 2>&1; then
	echo "ifconfig is instaled."
else
	echo "ifconfig status:Installing..."
	sudo apt-get install -y net-tools
	echo "ifconfig status:done..."
fi

#git
if command -v git >/dev/null 2>&1; then
	echo "git is instaled."
else
	echo "git status:Installing..."
	sudo apt-get install -y git
	echo "git status:done..."
fi

#installs
# Actualizar los repositorios e instalar el servidor OpenSSH
sudo apt-get install -y openssh-server

# Comprobar si el servidor OpenSSH está en ejecución
if systemctl status ssh >/dev/null 2>&1; then
    echo "El servidor OpenSSH está en ejecución."
else
    echo "El servidor OpenSSH no está en ejecución. Iniciando..."
    sudo systemctl start ssh
fi

# Mostrar la dirección IP del servidor
echo "La dirección IP del servidor es:"
hostname -I
