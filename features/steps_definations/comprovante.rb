Dado(/^que acesse o menu de comprovantes$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_comprovante"'
  page(Menu).abrir_menu
  page(Menu).acessar_comprovantes
end

Quando(/^selecionar um comprovante e o periodo$/) do
  page(Comprovante).selec_tipo_comprovante(MASSA['comprovante']['segunda_via_comprovante_transf'])
  page(Comprovante).btn_aplicar
  page(Comprovante).selecionar_detalhe_comprovante
end

Então(/^devo visualizar os detalhes do comprovante$/) do
  contem_texto('Comprovante de Transferência TED (2ª Via)')
end
