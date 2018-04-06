#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo
  Eu como usuário
  Quero acessar os saldos das minhas contas
  Para visualizar as informações de saldo

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login
  Quando acessar o saldo no menu
  Então 1devo visualizar o saldo consolidado da conta
