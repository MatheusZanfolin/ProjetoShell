#!/bin/bash
opcao=""
parar="n"
while [ $parar == "n" ]; do
	echo "`clear`"
	echo "=================MENU================="
	echo ""
	echo "Grupo"
	echo "	(a)Criar grupo"
	echo "	(b)Alterar nome de grupo"
	echo "Usuario"
	echo "	(c)Criar usuario"
	echo "	(d)Atribuir senha a usuario"
	echo "	(e)Excluir usuario"
	echo "Permissoes"
	echo "	(f)Atribuir owner a arquivo"
	echo "	(g)Atribuir grupo owner a arquivo"
	echo "	(h)Atribuir permissoes a um usuário a um arquivo"
	echo "	(i)Sair"
	echo "Digite a letra da operacao desejada: "
	read opcao
	case $opcao in
		a)./criarGrupo.sh;;
		b)./alterarNomeGrupo.sh;;
		c)./criarUsuario.sh;;
		d)./atribuirSenha.sh;;
		e)./excluirUsuario.sh;;
		f)./atribuirOwner.sh;;
		g)./atribuirGrupo.sh;;
		h)./atribuirPermissoes.sh;;
		i)parar="s";;
 	esac
done
