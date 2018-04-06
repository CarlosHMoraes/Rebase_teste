#encoding: utf-8
#language: pt

Funcionalidade: Home
  Eu como usuário
  Quero acessar a home do aplicativo Mobile PF
  Para visualizar as informações da conta

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@home @regressao @smoke
Cenário: Validar consulta de saldo na home das contas vinculadas
  Dado que realizar login com conta vinculada
  Quando acessar a home
  Então devo visualizar os saldos das contas no carrossel

@home @regressao
Cenário: Validar consulta de saldo de cartão na home
  Dado que realizei o login com cliente com saldo de cartão
  Quando acessar a área de cartões na home
  Então devo visualizar o saldo disponível do cartão na home

@home @regressao
Cenário: Validar consulta da posição cosolidada de investimentos
  Dado que realizei o login com cliente com investimentos
  Quando acessar a área de investimentos na home
  Então devo visualizar a posição consolidada dos investimentos
