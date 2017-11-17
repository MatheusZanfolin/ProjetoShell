#!/bin/bash
parar="n"
nomeGrupo=""
novoNomeGrupo=""
while [ $parar == "n" ]; do
	echo "`clear`"
	echo "Nome atual do grupo: "
	read nomeGrupo
	echo "O nome atual desejado era $nomeGrupo? (s/n)"
	read parar
done
parar="n"
while [ $parar == "n" ]; do
	echo "`clear`"
	echo "Nome do grupo: "
	read novoNomeGrupo
	echo "O nome desejado era $novoNomeGrupo? (s/n)"
	read parar
done
echo "`groupmod -n $novoNomeGrupo $nomeGrupo`"
