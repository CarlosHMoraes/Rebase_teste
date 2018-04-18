#encoding: utf-8
#language: pt
Funcionalidade: Consultar Saldo ok
  Eu como usuário
  Quero acessar saldos das minhas contas
  Para visualizar as informações de saldo

Contexto: Selecioefrernar ambiente para o teste
  Dado que seja selecionado o ambiente

@Novo_Cenario_ConsultarSaldoOk_Saldo_ValidarConsultaSaldoxxx_Menu3
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login 
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
4