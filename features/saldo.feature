#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo ok
  Eu como usuário aaa
  Quero acessar saldos das minhas contas
  Para visualizar as informações de saldo

@vish @teste3333
Contexto: Selecioefrernar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke @teste2222
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que realizar login 
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
