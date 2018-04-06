#encoding: utf-8
#language: pt

Funcionalidade: Consulta Fatura de Cartão de Crédito
  Eu como usuário
  Quero acessar as faturas dos meus cartões no aplicativo
  Para visualizar todas as informações de faturas

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@fatura @regressao @smoke
Cenário: Consultar fatura anterior entrando pelo home
  Dado que acessar a fatura do cartão pela home
  Quando selecionar uma fatura anterior a última paga
  Então devo visualizar a informações da fatura selecionada

@fatura @regressao
Cenário: Consultar fatura aberta acessando pelo menu
  Dado que acesse o menu faturas
  Quando realizar a consulta da fatura aberta
  Então devo visualizar as informações da fatura aberta

@fatura @regressao
Cenário: Realizar pagamento de fatura pelo menu
  Dado que acesse o menu faturas
  Quando realizar o pagamento de uma fatura
  Então devo visualizar o comprovante de pagamento da fatura
