#!/bin/bash

if [ $# -eq 0 ]; then
	# Si un argument invalide est fourni, affiche un message d'aide
	echo "Usage: $0 [clean][all]"
	echo ""
	echo "Avec l'argument 'clean', supprime tous les conteneurs."
	echo "Avec l'argument 'all', supprime tous les conteneurs et images."

elif [ $1 = "clean" ]; then
	# Si aucun argument n'est fourni, supprime tous les conteneurs et affiche un message de confirmation
	docker rm -f $(docker ps -qa) > /dev/null 2>&1
	echo "Tous les conteneurs ont été supprimés."
	echo "verification docker ps -la"
	docker ps -la
elif [ $1 = "all" ]; then
	# Si l'argument est "clean", supprime tous les conteneurs et images, et affiche un message de confirmation
	docker stop $(docker ps -qa) > /dev/null 2>&1
	docker rm $(docker ps -qa) > /dev/null 2>&1
	docker rmi $(docker images -q) > /dev/null 2>&1
	echo "Tous les conteneurs et images ont été supprimés."
	echo "verification docker ps -la"
	docker ps -la
	echo "verification docker images"
	docker images
fi

