
Dado(/^que acesso resgate de fundos$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_fundos"'
  page(Menu).abrir_menu
  page(Fundos).tocar_investimentos
  page(Fundos).tocar_fundos
  page(Fundos).tocar_botao_resgatar
end

Quando(/^digito um valor parcial para resgatar$/) do
  page(Geral).validar_texto('Resgate')
  page(Fundos).digitar_valor_parcial(MASSA['fundos']['valor_parcial'])
  page(Fundos).tocar_botao_continuar
  page(Geral).validar_texto("Resgate")
  page(Geral).validar_texto("Resgate Parcial")
  page(Geral).validar_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).data_do_dia
  page(Geral).validar_texto('No dia útil após a solicitação')
  page(Fundos).tocar_botao_concluir
  page(Geral).informar_cso
end

Então(/^visualizo o comprovante de resgate$/) do
  page(Geral).validar_texto(MENSAGENS['fundos']['msg_sucesso_resgate'])
  page(Geral).validar_texto('Transação: Resgate Parcial')
  page(Geral).contem_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).data_do_dia
  page(Geral).contem_texto('No dia útil após a solicitação')
end

Quando(/^agendo a data de resgate um valor parcial$/) do
  validar_texto('Resgate')
  page(Fundos).digitar_valor_parcial(MASSA['fundos']['valor_parcial'])
  page(Fundos).tocar_botao_agendar
  page(Geral).selecionar_data_desejada(12,12,2017)
  page(Fundos).tocar_botao_continuar
  page(Geral).validar_texto('Resgate')
  page(Geral).validar_texto('Resgate Parcial')
  page(Geral).validar_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).validar_texto(MASSA['fundos']['data_agendamento'])
  page(Fundos).tocar_botao_concluir
  page(Geral).informar_cso
end

Então(/^visualizo o comprovante com a data do agendamento do resgate$/) do
  page(Geral).validar_texto(MENSAGENS['fundos']['msg_sucesso_agendamento_resgate'])
  page(Geral).validar_texto('Transação: Resgate Parcial')
  page(Geral).contem_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).data_do_dia
end

Quando(/^resgato o valor total$/) do
  validar_texto('Resgate')
  page(Fundos).tocar_botao_valor_total
  page(Fundos).tocar_botao_continuar
  page(Geral).validar_texto("Resgate")
  page(Geral).validar_texto("Resgate Total")
  page(Geral).validar_texto($valor_total)
  page(Geral).data_do_dia
  page(Geral).validar_texto('No dia útil após a solicitação')
  page(Fundos).tocar_botao_concluir
  page(Geral).informar_cso
end

Dado(/^que acesso aplicacao de fundos$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_fundos_2"'
  page(Menu).abrir_menu
  page(Fundos).tocar_investimentos
  page(Fundos).tocar_fundos
  page(Fundos).tocar_botao_aplicar
end

Quando(/^digito um valor parcial para aplicar$/) do
  validar_texto('Aplicação')
  page(Fundos).digitar_valor_parcial(MASSA['fundos']['valor_parcial'])
  page(Fundos).tocar_botao_continuar
  page(Geral).validar_texto("Aplicação")
  page(Geral).validar_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).data_do_dia
  page(Fundos).tocar_botao_concluir
  page(Geral).informar_cso
end

Então(/^visualizo o comprovante da aplicação$/) do
  page(Geral).validar_texto(MENSAGENS['fundos']['msg_sucesso_aplicacao'])
  page(Geral).validar_texto('Transação: Aplicação Adicional')
  page(Geral).contem_texto('No dia útil após a solicitação')
  page(Geral).contem_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).data_do_dia
end

Quando(/^agendo a data de aplicação de um valor parcial$/) do
  validar_texto('Aplicação')
  page(Fundos).digitar_valor_parcial(MASSA['fundos']['valor_parcial'])
  page(Fundos).tocar_botao_agendar
  page(Geral).selecionar_data_desejada(12,12,2017)
  page(Fundos).tocar_botao_continuar
  page(Geral).validar_texto("Aplicação")
  page(Geral).validar_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).validar_texto(MASSA['fundos']['data_agendamento'])
  page(Fundos).tocar_botao_concluir
  page(Geral).informar_cso
end

Então(/^visualizo o comprovante com a data do agendamento da aplicação$/) do
  page(Geral).validar_texto(MENSAGENS['fundos']['msg_sucesso_aplicacao'])
  page(Geral).validar_texto('Transação: Aplicação Adicional')
  page(Geral).contem_texto(MASSA['fundos']['data_agendamento'])
  page(Geral).contem_texto('No dia útil após a solicitação')
  page(Geral).contem_texto(MASSA['fundos']['valor_parcial_formatado'])
  page(Geral).data_do_dia
end

Então(/^visualizo o comprovante de resgate com o valor total$/) do
  page(Geral).validar_texto(MENSAGENS['fundos']['msg_sucesso_resgate'])
  page(Geral).validar_texto("Transação: Resgate Total")
  page(Geral).contem_texto($valor_total)
  page(Geral).data_do_dia
end

Quando(/^agendo a data de resgate do valor total$/) do
  validar_texto('Resgate')
  page(Fundos).tocar_botao_valor_total
  page(Fundos).tocar_botao_agendar
  page(Geral).selecionar_data_desejada(12,12,2017)
  page(Fundos).tocar_botao_continuar
  page(Geral).validar_texto("Resgate")
  page(Geral).validar_texto("Resgate Total")
  page(Geral).validar_texto($valor_total)
  page(Geral).validar_texto(MASSA['fundos']['data_agendamento'])
  page(Geral).validar_texto('No dia útil após a solicitação')
  page(Fundos).tocar_botao_concluir
  page(Geral).informar_cso
end

Então(/^visualizo o comprovante do resgate com a data do agendamento$/) do
  page(Geral).validar_texto(MENSAGENS['fundos']['msg_sucesso_resgate'])
  page(Geral).validar_texto('Transação: Resgate Total')
  page(Geral).contem_texto($valor_total)
  page(Geral).data_do_dia
end
