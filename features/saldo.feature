#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo
  Eu 1como usuário
  Quero 2acessar ererexx os saldos das minhas contas
  Para visualizar as informações de saldo

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que 3realizar login
  Quando 2acessars o saldo no menu
  Então 1devo visualizar o saldo consolidado da conta
