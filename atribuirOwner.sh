#!/bin/bash

parar="n"
nomeUsuario=""
nomeDiretorio=""

while [ $parar = "n" ] do
	echo "`clear`"

	echo "Nome do usuário: "
	read $nomeUsuario

	echo "O nome desejado era $nomeUsuario? (s/n)"
	read $parar	
done

$parar="n"

while [ $parar = "n" ] do
	echo "`clear`"

	echo "Nome do grupo: "
	read $nomeDiretorio

	echo "O nome desejado era $nomeDiretorio? (s/n)"
	read $parar	
done

echo "``"