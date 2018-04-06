#encoding: utf-8
#language: pt

Funcionalidade: Empréstimo
  Eu como usuário
  Quero acessar o menu empréstimos
  Para visualizar e relalizar emprésitmos

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@emprestimo
Cenário: Contratar empréstimo pessoal
  Dado que acesse o menu de empréstimo
  Quando simular uma contratação de empréstimo pessoal
  Então devo visualizar o comprovante de contratação do emprestimo
