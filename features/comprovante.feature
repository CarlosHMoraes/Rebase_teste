#encoding: utf-8
#language: pt

Funcionalidade: Consultar Comprovantes
  Eu como usuário
  Quero acessar o menu de comprovantes
  Para visualizar todo os compravantes das transações realizadas

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@comprovante @regressao @smoke
Cenário: Consultar segunda via de comprovante de pagamento
  Dado que acesse o menu de comprovantes
  Quando selecionar um comprovante e o periodo
  Então devo visualizar os detalhes do comprovante
