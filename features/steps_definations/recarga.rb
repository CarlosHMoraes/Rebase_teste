Dado(/^que acesse a opção de recargar no menu$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_para_recarga"'
  page(Menu).abrir_menu
  page(Menu).acessar_recarga_telefone
end

Quando(/^realizar uma recarga de celular$/) do
  page(Recarga).selecionar_operadora
  page(Recarga).informar_ddd(MASSA['recarga']['ddd_cel'])
  page(Recarga).informar_cel
  scroll_para_baixo(1)
  page(Recarga).repetir_ddd(MASSA['recarga']['ddd_cel'])
  page(Recarga).repetir_cel
  page(Recarga).selecionar_valor_recarga(MASSA['recarga']['valor_recarga'])
  page(Recarga).btn_continuar
  contem_texto($num_formatado)
  contem_texto(MASSA['recarga']['operadora_oi'])
  contem_texto(MASSA['recarga']['valor_recarga'])
  page(Recarga).btn_confirmar
  page(Geral).informar_cso
end

Então(/^a recarga é realizada com sucesso$/) do
  validar_texto(MENSAGENS['recarga']['msg_sucesso'])
  contem_texto($num_formatado)
  contem_texto(MASSA['recarga']['valor_recarga'])
  contem_texto(MASSA['recarga']['operadora_oi'])
  page(Geral).data_do_dia
end

Quando(/^programar uma recarga$/) do
  page(Recarga).btn_recarga_programada
  page(Recarga).btn_programar
  page(Recarga).selecionar_operadora
  page(Recarga).informar_ddd(MASSA['recarga']['ddd_cel'])
  page(Recarga).informar_cel
  page(Recarga).repetir_ddd(MASSA['recarga']['ddd_cel'])
  page(Recarga).repetir_cel
  page(Recarga).selecionar_valor_recarga(MASSA['recarga']['valor_recarga'])
  page(Recarga).scroll_ate_elemento_aparecer_na_tela("* text:'Continuar'")
  page(Recarga).btn_continuar
  page(Geral).contem_texto(MASSA['recarga']['operadora_oi'])
  contem_texto($num_formatado)
  page(Geral).contem_texto(MASSA['recarga']['valor_recarga'])
  page(Geral).contem_texto('Semanal')
  page(Recarga).btn_confirmar
  page(Geral).informar_cso
end

Então(/^a recarga é programada com sucesso$/) do
  validar_texto(MENSAGENS['recarga']['recarga_programda_sucesso'])
  contem_texto($num_formatado)
  page(Geral).contem_texto(MASSA['recarga']['valor_recarga'])
  page(Geral).contem_texto(MASSA['recarga']['operadora_oi'])
  page(Geral).data_do_dia
end
