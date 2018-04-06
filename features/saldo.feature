#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu como usuário 
  Quero acessar saldos das minhas contas
  Para visualizar as informações de saldo

@vish
Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke 
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login 
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
