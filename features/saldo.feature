#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo
  Eu 1como usuário
  Quero 2acessar os saldos das minhas contas
  Para visualizar as informações de saldo

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login
  Quando acessar o saldo no menu
  Então devo visualizar o saldo consolidado da conta
