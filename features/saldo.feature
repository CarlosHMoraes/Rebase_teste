#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu 1como usuário
  Quero acessar saldos das minhas contas
  Para visualizdfgdfgdr as inforsdfsmações de saldo

@vish
Contexto: Selecioefrernar ambiente para o teste
  Dado que seja123 selecionado o ambiente

@saldo @regressao @smoke 
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que realizar login 123
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
