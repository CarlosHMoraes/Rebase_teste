#encoding: utf-8
#language: pt

Funcionalidade: Login
  Eu como usuário login1
  Quero acessar o aplicativo Mobile PF do Santander
  Para visualizar as informações da minha conta PF

Contexto: Selecionar ambiente para o teste
	Dado que seja selecionado o ambiente

<<<<<<< HEAD
@login @regressao @smoke @login2
=======
@login @regressao @smoke @master2
>>>>>>> master
Cenário: Validar login com cliente não correntista
  Dado que acesse o aplicativo Mobile PF
  Quando realizar o login com um cliente não correntista
  Então devo visualizar a home para clientes não correntista

#@login @regressao @login3
Cenário: Validar login com CSO ativo
  Dado que acesse o aplicativo Mobile PF
  Quando realizar o login com um "cliente_cso_ativo"
  Então devo visualizar a home do aplicativo

#@login @regressao
Cenário: Validar login com CSO inativo
  Dado que acesse o aplicativo Mobile PF
  Quando realizar o login com um "cliente_cso_inativo"
  Então devo visualizar informativo de cso inativo
