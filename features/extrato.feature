#encoding: utf-8
#language: pt

Funcionalidade: Consultar Extrato
  Eu como usuário
  Quero acessar o extrato da conta
  Para visualizar as informações de movimentação

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@extrato @regressao @smoke
Cenário: Validar consulta do extrato da conta corrente acessando pelo menu
  Dado que acesse o menu conta corrente
  Quando realizar a consulta de extrato
  Então devo visualizar todas as movimentações da conta
1
2