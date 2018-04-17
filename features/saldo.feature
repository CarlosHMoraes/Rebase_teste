#encoding: utf-8
#language: pt
@saldo1
Funcionalidade: Consultar Saldo ok
  Eu como usuário aaa
  Quero acessar saldos das minhas contas
  Para visualizar as informações de saldo

@vish @teste3333 @teste222 @saldo2
Contexto: Selecioefrernar ambiente para o teste
  Dado que seja selecionado o ambiente

@Novo_Cenario_ConsultarSaldoOk_Saldo_ValidarConsultaSaldoxxx_Menu3 @saldo3
Cenário: Validar consulta de saldo acessando pelo menu
  Dado que realizar login 
  Quando  o saldo no menu 
  Então devo visualizar o saldo consolidado da conta
