#encoding: utf-8
#language: pt

Funcionalidade: Poupança
  Eu como usuário do banco Santander
  Quero acessar o menu de poupança
  Para visualizar o saldo e fazer aplicações

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@Novo_Cenario_Poupanca_cartoesValidarTransacao_CreditoNulo @poupanca @regressao
Cenário: Realizar aplicação de poupança
  Dado que acesse o menu de poupança
  Quando realizar um aplicação na poupança
  Então devo visualizar o comprovante de aplicação realizada

@poupanca @Novo_Cenario_teste_banana_uvamista @regressao
Cenário: Realizar resgate da poupança
  Dado que acesse o menu de poupança
  Quando realizar um resgate da poupança
  Então devo visualizar o comprovante de resgate
