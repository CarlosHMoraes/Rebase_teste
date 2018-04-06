Dado(/^que acesse o menu conta corrente$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_extrato"'
  page(Menu).abrir_menu
  page(Menu).acessar_conta_corrente
end

Quando(/^realizar a consulta de extrato$/) do
  page(Conta).acessar_extrato
end

Então(/^devo visualizar todas as movimentações da conta$/) do
  validar_texto('Todos ', 'Débito ', 'Crédito ', 'Conta Corrente 0001/02.006854.0', '  Selecionar Período')
  contem_texto('Saldo disp. R$')
  contem_texto('Saldo disp. R$')
end
