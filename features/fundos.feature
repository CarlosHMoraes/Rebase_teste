#encoding: utf-8
#language: pt

Funcionalidade: Efetuar resgate e aplicação de fundos de investimentos
  Eu como usuário
  Quero acessar meus fundos de investimentos
  Para fazer uma aplicação ou realizar um resgate

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@fundos @regressao
Cenário: Efetuar resgate de um valor parcial
  Dado que acesso resgate de fundos
  Quando digito um valor parcial para resgatar
  Então visualizo o comprovante de resgate

@fundos @regressao
Cenário: Agendar resgate de um valor parcial
  Dado que acesso resgate de fundos
  Quando agendo a data de resgate um valor parcial
  Então visualizo o comprovante com a data do agendamento do resgate

Cenário: Efetuar resgate do valor total
  Dado que acesso resgate de fundos
  Quando resgato o valor total
  Então visualizo o comprovante de resgate com o valor total

Cenário: Agendar resgate do valor total
  Dado que acesso resgate de fundos
  Quando agendo a data de resgate do valor total
  Então visualizo o comprovante do resgate com a data do agendamento

@fundos @regressao
Cenário: Efetuar aplicação de um valor parcial
  Dado que acesso aplicacao de fundos
  Quando digito um valor parcial para aplicar
  Então visualizo o comprovante da aplicação

@fundos @regressao
Cenário: Agendar aplicação de um valor parcial
  Dado que acesso aplicacao de fundos
  Quando agendo a data de aplicação de um valor parcial
  Então visualizo o comprovante com a data do agendamento da aplicação
