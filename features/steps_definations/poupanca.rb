Dado(/^que acesse o menu de poupança$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_poupanca"'
  page(Menu).abrir_menu
  page(Menu).acessar_poupanca
end

Quando(/^realizar um aplicação na poupança$/) do
  page(Poupanca).aplicacao
  page(Poupanca).informar_valor(MASSA['poupanca']['valor'])
  page(Poupanca).btn_continuar
  page(Poupanca).btn_confirmar
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante de aplicação realizada$/) do
  validar_texto(MENSAGENS['poupanca']['msg_sucesso_aplicacao'])
  contem_texto(MASSA['poupanca']['tipo_transacao_aplicacao'])
  contem_texto(MASSA['poupanca']['valor_aplicado'])
  page(Geral).data_do_dia
end

Quando(/^realizar um resgate da poupança$/) do
  page(Poupanca).resgate
  page(Poupanca).informar_valor_resgate(MASSA['poupanca']['valor'])
  page(Poupanca).btn_continuar
  page(Poupanca).btn_confirmar
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante de resgate$/) do
  validar_texto(MENSAGENS['poupanca']['msg_sucesso_resgate'])
  contem_texto(MASSA['poupanca']['valor_aplicado'])
  contem_texto(MASSA['poupanca']['tipo_transacao_resgate'])
  page(Geral).data_do_dia
end
