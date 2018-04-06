#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu 1como usuário 123
  Quero acessar saldos das minhas contas
  Para visualizdfgdfgdr as inforsdfsmações de saldo

@vish
Contexto: Selecionar ambiente para o teste
  Dado que seja123 selecionado o ambiente

@saldo @regressao @smoke 
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login 2
  Quando  o saldo no menu 3
  Então devo visualizar o saldo consolidado da conta
