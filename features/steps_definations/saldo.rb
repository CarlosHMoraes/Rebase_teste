Dado(/^que realizar login$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_saldo"'
end

Quando(/^acessar o saldo no menu$/) do
  page(Menu).abrir_menu
  page(Menu).acessar_conta_corrente
  page(Menu).acessar_saldo
end

Então(/^devo visualizar o saldo consolidado da conta$/) do
  validar_texto('(+) Sld. CC/Cont Max', '(=) Sld. Total CC/Conta Max', '(=) Sld. Disp CC/ContaMax')
  validar_texto('(=) Sld. Disponível', '(=) Sld. Disponível Total')
  contem_texto('R$ ')
end
