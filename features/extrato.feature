#encoding: utf-8
#language: pt

@extrato3 @extrato6 @extrato10
Funcionalidade: Consultar Extrato
  Eu como usuário
  Quero acessar o extrato da conta
  Para visualizar as informações de movimentação

@extrato5 @extrato11
Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente extrato7

@extrato @regressao @smoke @extrato1 @xtrato2 @extrato4
Cenário: Validar consulta do extrato da conta corrente acessando pelo menu
  Dado que acesse o menu conta corrente extrato9
  Quando realizar a consulta de extrato extrato8 extrato12
  Então devo visualizar todas as movimentações da conta
