#encoding: utf-8
#language: pt

Funcionalidade: Consultar Saldo
<<<<<<< HEAD
  Eu 1como usuári
  Quero 2acessar ererexx odfgdfgs saldos das minhas contas
=======
  Eu 1como usuário
  Quero acessar saldos das minhas contas
>>>>>>> fabi 3
  Para visualizdfgdfgdr as inforsdfsmações de saldo

Contexto: Selecioefrernar ambiente para o teste
  Dado que seja selecionado o ambiente

@saldo @regressao @smoke
Cenário: V4alidar consulta de saldo acessando pelo menu
  Dado que realizar login
  Quando  o saldo no menu
  Então devo visualizar o saldo consolidado da conta
