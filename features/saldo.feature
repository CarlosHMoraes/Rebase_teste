#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu como usuário aaa
  Quero acessar saldos das minhas contas
  Para visualizar as informações de saldo

@vish
Contexto: Selecionar ambiente para o teste

@saldo @regressao @smoke 
Cenário: Validar consulta de saldo acessando pelo menu
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
