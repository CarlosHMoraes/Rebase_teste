#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu como usuário 
  Quero acessar saldos das minhas contas
  Para visualizr as informações de saldo

@vish
<<<<<<< HEAD
Contexto: Selecionar ambiente para o teste
  Dado que seja123 selecionado o ambiente

@saldo @regressao @smoke 
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que realizar login 123
=======
Contexto: Selecioefrernar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke 
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que realizar login 
>>>>>>> dev2
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
