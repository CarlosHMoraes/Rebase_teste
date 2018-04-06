Dado(/^que realizar login com conta vinculada$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_saldo"'
end

Quando(/^acessar a home$/) do
  page(Inicio).exibir_informacao_carrossel('Conta Santander')
end

Então(/^devo visualizar os saldos das contas no carrossel$/) do
  wait_for_elements_exist(["* text:'Conta Santander\r0001/02.006741.5'"], :timeout => 10)
  contem_texto('Saldo disponível')
  contem_texto('Saldo disponível total')
  scroll_para_esquerda(1)
  wait_for_elements_exist(["* text:'Conta Santander\r1744/01.000736.7'"], :timeout => 10)
  contem_texto('Saldo disponível')
  contem_texto('Saldo disponível total')
end

Dado(/^que realizei o login com cliente com saldo de cartão$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cart_credito"'
end

Quando(/^acessar a área de cartões na home$/) do
  validar_texto('CARTÕES')
  page(Inicio).exibir_informacao_carrossel('SANTANDER STYLE PLAT')
  scroll_para_baixo(1)
end

Então(/^devo visualizar o saldo disponível do cartão na home$/) do
  wait_for_elements_exist("* text:'SANTANDER STYLE PLAT\nFinal: 3441'", :timeout => 10)
  contem_texto('Limite Disponível')
end

Dado(/^que realizei o login com cliente com investimentos$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_renda_fixa"'
end

Quando(/^acessar a área de investimentos na home$/) do
  page(Inicio).exibir_informacao_carrossel('Total de investimentos')
  scroll_para_baixo(1)
end

Então(/^devo visualizar a posição consolidada dos investimentos$/) do
  validar_texto('Total de investimentos')
  contem_texto('Saldo Total Bruto')
end
