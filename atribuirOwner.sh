#!/bin/bash

parar="n"
nomeUsuario=""
nomeDiretorio=""

while [ $parar -eq "n" ] do
	echo "`clear`"

	echo "Nome do usuário: "
	read $nomeUsuario

	echo "O nome desejado era $nomeUsuario? (s/n)"
	read $parar	
done

$parar="n"

while [ $parar -eq "n" ] do
	echo "`clear`"

	echo "Nome do arquivo: "
	read $nomeDiretorio

	echo "O nome desejado era $nomeDiretorio? (s/n)"
	read $parar	
done

echo "`chown $nomeUsuario $nomeDiretorio`"