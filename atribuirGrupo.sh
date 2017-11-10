#!/bin/bash

parar="n"
nomeUsuario=""
nomeGrupo=""

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

	echo "Nome do grupo: "
	read $nomeDiretorio

	echo "O nome desejado era $nomeGrupo? (s/n)"
	read $parar	
done

echo "`chgrp $nomeUsuario $nomeGrupo`"