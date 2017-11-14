#!/bin/bash

continuar = true
opcao	  = 0

while [ $continuar -eq true ]
do
	echo "`clear`"
	echo "=================MENU================="
	echo ""
	echo "Grupo"
	echo "	(a)Criar grupo"
	echo "	(b)Alterar nome de grupo"
	echo "Usuario"
	echo "	(c)Criar usuario"
	echo "	(d)Atribuir senha a usuario"
	echo "	(e)Excuir usuario"
	echo "Permissoes"
	echo "	(f)Atribuir owner a arquivo"
	echo "	(g)Atribuir grupo owner a arquivo"
	echo "	(h)Atribuir permissoes a um usuário a um arquivo"
	echo ""
	echo "Digite a letra da operacao desejada: "
	read $opcao

	case $opcao in
		a) echo "`./criarGrupo.sh`" ;;
		b) echo "`./alterarNomeGrupo.sh`" ;;
		c) echo "`./criarUsuario.sh`" ;;
		d) echo "`./atribuirSenha.sh`" ;;
		e) echo "`./excluirUsuario.sh`" ;;
		f) echo "`./atribuirOwner.sh`" ;;
		g) echo "`./atribuirGrupo.sh`" ;;
		h) echo "`./atribuirPermissoes.sh`" ;;
	esac
done

