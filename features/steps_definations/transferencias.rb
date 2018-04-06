Dado(/^que acesse o menu de transfêrencias$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_para_tranferencia"'
  page(Menu).abrir_menu
  page(Menu).acessar_transferencia
end

Quando(/^realizar uma transferência entre contas Santander$/) do
  page(Transferencia).selecionar_favorecido(MASSA['transferencia']['conta_santander'])
  page(Transferencia).informar_valor(MASSA['transferencia']['valor'])
  page(Transferencia).btn_transferir
  page(Transferencia).btn_continuar_transf
  page(Transferencia).btn_confirmar_transf
  page(Geral).informar_cso
end

Então(/^devo visualizar as informações do comprovante da transfência$/) do
  validar_texto(MENSAGENS['transferencia']['msg_sucesso'])
  validar_texto(MASSA['transferencia']['conta_de_destino_satander'])
  validar_texto(MASSA['transferencia']['tipo_transferencia_santander'])
  validar_texto(MASSA['transferencia']['valor_transferido'])
  page(Geral).data_do_dia
end

Quando(/^realizar uma transferência do tipo DOC$/) do
  page(Transferencia).selecionar_favorecido(MASSA['transferencia']['conta_outro_banco'])
  page(Transferencia).informar_valor(MASSA['transferencia']['valor'])
  page(Transferencia).btn_transferir
  page(Transferencia).btn_DOC
  page(Transferencia).btn_continuar_transf
  page(Transferencia).btn_confirmar_transf
  page(Geral).informar_cso
end

Então(/^devo visualizar as informações do comprovante do DOC$/) do
  page(Geral).data_do_dia
  validar_texto(MENSAGENS['DOC']['msg_sucesso'])
  validar_texto(MASSA['transferencia']['conta_de_destino_outro_banco'])
  validar_texto(MASSA['transferencia']['tipo_transferencia'])
  validar_texto(MASSA['transferencia']['valor_transferido'])
end

Quando(/^realizar uma transferência do tipo TED$/) do
  page(Transferencia).selecionar_favorecido(MASSA['transferencia']['conta_outro_banco'])
  page(Transferencia).informar_valor(MASSA['transferencia']['valor'])
  page(Transferencia).btn_transferir
  page(Transferencia).btn_continuar_transf
  page(Transferencia).btn_confirmar_transf
  page(Geral).informar_cso
end

Então(/^devo visualizar as informações do comprovante do TED$/) do
  page(Geral).data_do_dia
  validar_texto(MENSAGENS['transferencia']['msg_ted_sucesso'])
  validar_texto(MASSA['transferencia']['conta_de_destino_outro_banco'])
  validar_texto(MASSA['transferencia']['tipo_transferencia_ted'])
  validar_texto(MASSA['transferencia']['valor_transferido'])
end

Quando(/^realizar a inclusão de favorecido de outro banco$/) do
  page(Transferencia).selecionar_inclusao_favorecido
  page(Transferencia).btn_incluir_favorecido
  page(Transferencia).selecionar_banco_favorecido(MASSA['transferencia']['banco_favorecido'])
  page(Transferencia).fleg_cadastrar_favorecido
  page(Transferencia).informar_agencia_favorecido(MASSA['transferencia']['agencia_favorecido'])
  page(Transferencia).informar_conta_favorecido(MASSA['transferencia']['conta_favorecido'])
  page(Transferencia).informar_digito_favorecido(MASSA['transferencia']['digito_conta_favorecido'])
  page(Transferencia).informar_nome_favorecido(MASSA['transferencia']['nome_favorecido'])
  page(Transferencia).informar_documento_favorecido
  page(Transferencia).btn_confirmar_cadastro_favorecido
end

Então(/^devo visualizar o novo favorecido cadastrado$/) do
  validar_texto('Conta corrente')
  validar_texto(MASSA['transferencia']['banco_cadastro_favorecido'])
  validar_texto(MASSA['transferencia']['nome_favorecido'])
end

Quando(/^realizar o agendamento de tranferencia$/) do
  page(Transferencia).selecionar_favorecido(MASSA['transferencia']['conta_santander'])
  page(Transferencia).informar_valor(MASSA['transferencia']['valor'])
  page(Transferencia).btn_transferir
  page(Transferencia).btn_agendar_tranferencia
  page(Geral).selecionar_data_desejada(31, 07, 2017)
  page(Transferencia).btn_continuar_transf
  page(Transferencia).btn_confirmar_transf
  page(Geral).informar_cso
end

Então(/^devo visualizar as informações do agendamento da transferencia$/) do
  validar_texto(MENSAGENS['transferencia']['msg_sucesso_agendamento_tranf'])
  validar_texto("Data de agendamento: 31/07/2017")
  validar_texto(MASSA['transferencia']['valor_transferido'])
end

Quando(/^realizar uma transferência agendada do tipo DOC$/) do
  page(Transferencia).selecionar_favorecido(MASSA['transferencia']['conta_outro_banco'])
  page(Transferencia).informar_valor(MASSA['transferencia']['valor'])
  page(Transferencia).btn_transferir
  page(Transferencia).btn_DOC
  page(Transferencia).btn_agendar_tranferencia
  page(Geral).selecionar_data_desejada(31, 07, 2017)
  page(Transferencia).btn_continuar_transf
  page(Transferencia).btn_confirmar_transf
  page(Geral).informar_cso
end

Então(/^devo visualizar as informações do comprovante do agendamento DOC$/) do
  page(Geral).data_do_dia
  validar_texto(MENSAGENS['DOC']['msg_sucesso_agendamento'])
  validar_texto(MASSA['transferencia']['conta_de_destino_outro_banco'])
  validar_texto(MASSA['transferencia']['tipo_transferencia'])
  validar_texto(MASSA['transferencia']['valor_transferido'])
end
