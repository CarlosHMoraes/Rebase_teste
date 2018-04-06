Dado(/^que acesse o menu de pagamento de boleto$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_para_pagamentos"'
  page(Menu).abrir_menu
  page(Menu).acessar_pagamentos
  page(Menu).acessar_pag_cod_barras
end

Quando(/^realizar o agendamento de um boleto$/) do
  page(Pagamentos).informar_cod_barras(MASSA['pagamento']['dados_boleto']['outro_banco']['boleto_agendamento'])
  page(Pagamentos).btn_continuar
  #favorecido ou beneficiario foi retirado da nova cobrança
  #page(Pagamentos).informar_favorecido(MASSA['pagamento']['dados_boleto']['outro_banco']['nome_cad_favorecido'])
  page(Geral).scroll_ate_elemento_aparecer_na_tela("* text:'Agendar'")
  page(Pagamentos).acessar_agendamento
  page(Pagamentos).selecionar_data(1)
  page(Pagamentos).btn_continuar_pag
  page(Pagamentos).btn_continuar_pag
  page(Geral).informar_cso
end

Então(/^devo visualizar o boleto agendado$/) do
  validar_texto(MENSAGENS['agendamento']['msg_sucesso'])
  contem_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['forma_pagamento'])
  #contem_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['nome_favorecido'])
  contem_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['valor_do_boleto_agendado'])
  contem_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['data_venc_boleto'])
  contem_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['data_venc_agendamento'])
end

Quando(/^realizar o pagamento de uma conta de consumo$/) do
  page(Pagamentos).informar_cod_barras(MASSA['pagamento']['conta_de_consumo']['conta_consumo_net'])
  page(Pagamentos).btn_continuar
  page(Pagamentos).btn_continuar_pag
  validar_texto(MASSA['pagamento']['conta_de_consumo']['empresa'])
  contem_texto(MASSA['pagamento']['conta_de_consumo']['valor'])
  page(Pagamentos).btn_continuar_pag
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante do pagamento$/) do
  validar_texto(MENSAGENS['pagamento']['msg_sucesso'])
  #validar_texto(MASSA['pagamento']['conta_de_consumo']['forma_pagamento'])
  #validar_texto(MASSA['pagamento']['conta_de_consumo']['canal'])
  contem_texto(MASSA['pagamento']['conta_de_consumo']['valor'])
end

Quando(/^realizar o pagamento de um boleto$/) do
  page(Pagamentos).informar_cod_barras($boleto_itau.linha_digitavel)
  page(Pagamentos).btn_continuar
  #page(Pagamentos).informar_favorecido(MASSA['pagamento']['dados_boleto']['outro_banco']['nome_cad_favorecido'])
  page(Pagamentos).btn_continuar_pag
  page(Pagamentos).btn_continuar_pag
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante do pagamento do boleto$/) do
page(Geral).data_do_dia
page(Geral).data_de_amanha
validar_texto(MENSAGENS['pagamento']['msg_sucesso'])
contem_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['forma_pagamento'])
#validar_texto(MASSA['pagamento']['dados_boleto']['outro_banco']['nome_favorecido'])
end

Quando(/^realizar o pagamento de um boleto Santnader$/) do
  page(Pagamentos).informar_cod_barras(MASSA['pagamento']['dados_boleto']['boleto_santander']['boleto'])
  page(Pagamentos).btn_continuar
  page(Pagamentos).btn_continuar_pag
  page(Pagamentos).btn_continuar_pag
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante do pagamento do boleto Santander$/) do
  page(Geral).data_do_dia
  validar_texto(MENSAGENS['pagamento']['msg_sucesso'])
  contem_texto(MASSA['pagamento']['dados_boleto']['boleto_santander']['forma_pagamento'])
  contem_texto(MASSA['pagamento']['dados_boleto']['boleto_santander']['valor'])
  contem_texto(MASSA['pagamento']['dados_boleto']['boleto_santander']['vencimento'])
end
