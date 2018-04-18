#encoding: utf-8
#language: pt

Funcionalidade: Consultar Extrato
  Eu como usuário extrato1
  Quero acessar o extrato da conta extrato2
  Para visualizar as informações de movimentação

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@extrato @regressao @smoke
Cenário: Validar consulta do extrato da conta corrente acessando pelo menu
  Dado que acesse o menu conta corrente extrato3.2
  Quando realizar a consulta de extrato extrato3.1
  Então devo visualizar todas as movimentações da conta
