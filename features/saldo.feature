#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu como usuário aaa
  Quero acessar saldos das minhas contas
  Para visualizar as informações de saldo

@vish
Contexto: Selecionar ambiente para o teste
<<<<<<< HEAD
  Dado que seja123 selecionado o ambiente

@saldo @regressao @smoke 
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que realizar login 123
=======
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke 
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login 
>>>>>>> felipe 1
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
