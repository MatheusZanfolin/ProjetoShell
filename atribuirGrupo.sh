#!/bin/bash

parar="n"
nomeArquivo=""
nomeGrupo=""

while [ $parar -eq "n" ] do
	echo "`clear`"

	echo "Nome do grupo: "
	read $nomeGrupo

	echo "O nome desejado era $nomeGrupo? (s/n)"
	read $parar	
done

$parar="n"

while [ $parar -eq "n" ] do
	echo "`clear`"

	echo "Nome do arquivo: "
	read $nomeArquivo

	echo "O nome desejado era $nomeArquivo? (s/n)"
	read $parar	
done

echo "`chgrp $nomeGrupo $nomeArquivo`"