#!/bin/bash
parar="n"
nomeArquivo=""
tipopessoa=""
while [ $parar == "n" ]; do
	echo "`clear`"
	echo "Nome do arquivo: (com extensão)"
	read nomeArquivo
	echo "O nome desejado era $nomeArquivo? (s/n)"
	read parar
done
parar="n"
while [ $parar == "n" ]; do
	echo "`clear`"
	echo "Digite o tipo de pessoa que deseja alterar as permissões : (u=proprietário/g=grupo do proprietário/o=outros)"
	read tipopessoa
	echo "O tipo de pessoa era $tipopessoa? (s/n)"
	read parar
done
podeLer=""
podeEscr=""
podeExec=""
parar="n"
while [ $parar == "n" ]; do
	echo "Essa(s) pessoa(s) poderá(ão) visualizar o arquivo $nomeArquivo ? (s/n)"
	read podeLer
	echo "Essa(s) pessoa(s) poderá(ão) alterar no arquivo $nomeArquivo ? (s/n)"
	read podeEscr
	echo "Essa(s) pessoa(s) poderá(ão) executar o arquivo $nomeArquivo ? (s/n)"
	read podeExec
	echo "Confere? (s/n)"
	read parar
done
nomePermissaoAtual="i"
permissaoAtual=""
sinalAtual=""
until [ $nomePermissaoAtual == "x" ]; do
	case $nomePermissaoAtual in
		i)nomePermissaoAtual="r";
		permissaoAtual=$podeLer;;
		r)nomePermissaoAtual="w";
		permissaoAtual=$podeEscr;;
		w)nomePermissaoAtual="x";
		permissaoAtual=$podeExec;;
	esac
	if [ $permissaoAtual == "s" ]; then
		sinalAtual="+"
	else
		sinalAtual="-"
	fi
	echo "`chmod $tipopessoa$sinalAtual$nomePermissaoAtual $nomeArquivo`"
done
