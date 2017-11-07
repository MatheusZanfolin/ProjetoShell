#!/bin/bash

parar 	  = "n"
nomeGrupo = ""

while [ $parar = "n" ] do
	echo "`clear`"

	echo "Nome do grupo: "
	read $nomeGrupo

	echo "O nome desejado era $nomeGrupo? (s/n)"
	read $parar	
done

echo "`groupadd $nomeGrupo`"

