#!/bin/bash

parar="n"
nomeUsuario=""

while [ $parar -eq "n" ] do
	echo "`clear`"

	echo "Nome do usuário: "
	read $nomeUsuario

	echo "O nome desejado era $nomeUsuario? (s/n)"
	read $parar	
done

echo "`userdel -r $nomeUsuario`"