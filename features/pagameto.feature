#encoding: utf-8
#language: pt

Funcionalidade: Realizar Pagamentos
  Eu como usuário
  Quero acessar a opção de pagamentos
  Para realizar diversos tipos de pagamentos

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@pagamento @regressao @smoke
Cenário: Realizar agendamento de boleto
  Dado que acesse o menu de pagamento de boleto
  Quando realizar o agendamento de um boleto
  Então devo visualizar o boleto agendado

@pagamento @regressao
Cenário: Realizar pagamento de conta de consumo
  Dado que acesse o menu de pagamento de boleto
  Quando realizar o pagamento de uma conta de consumo
  Então devo visualizar o comprovante do pagamento

@pagamento @regressao @smoke
Cenário: Realizar pagamento de boleto
  Dado que acesse o menu de pagamento de boleto
  Quando realizar o pagamento de um boleto
  Então devo visualizar o comprovante do pagamento do boleto

@pagamento @regressao
Cenário: Realizar pagamento de boleto Santander
  Dado que acesse o menu de pagamento de boleto
  Quando realizar o pagamento de um boleto Santnader
  Então devo visualizar o comprovante do pagamento do boleto Santander
