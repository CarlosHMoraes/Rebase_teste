Dado(/^que acessar a fatura do cartão pela home$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_fatura_aberta"'
  page(Geral).aguardar_animacao
  scroll_para_baixo(2)
  page(Inicio).acessar_detalhe_fatura
end

Quando(/^selecionar uma fatura anterior a última paga$/) do
  page(Fatura).selecionar_outra_fatura
  page(Fatura).selecionar_periodo_fat
end

Então(/^devo visualizar a informações da fatura selecionada$/) do
  validar_texto('Resumo da Fatura')
  $data_de_vecimento = query("* id:'valor'", :text).first
  validar_texto('Data de Vencimento:', $data_de_vecimento)
  $valor_total_fatura = query("* id:'valor' index:1", :text).first
  validar_texto('Total dessa fatura:', $valor_total_fatura)
  $pagamento_minimo = query("* id:'valor' index:2", :text).first
  validar_texto('Pagamento mínimo:', $pagamento_minimo)
  $muta_por_atraso = query("* id:'valor' index:3", :text).first
  validar_texto('Multa por atraso:', $muta_por_atraso)
  $juros_mora = query("* id:'valor' index:4", :text).first
  validar_texto('Juros de mora:', $juros_mora)
end

Dado(/^que acesse o menu faturas$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_fatura_aberta"'
  page(Menu).abrir_menu
  page(Menu).acessar_cartao
end

Quando(/^realizar a consulta da fatura aberta$/) do
  page(Menu).acessar_faturas
  validar_texto('Aberta')
end

Então(/^devo visualizar as informações da fatura aberta$/) do
  validar_texto('Data de Vencimento:', 'Saldo Parcial:')
  scroll_para_baixo(1)
  validar_texto('Limite disponível:')
  contem_texto('R$ ')
end

Quando(/^realizar o pagamento de uma fatura$/) do
  page(Menu).acessar_pagamento_fatura
  page(Fatura).informar_outro_valor_para_pagamento(MASSA['cartao']['valor_para_pagamento'])
  page(Fatura).btn_continuar_pagamento
  page(Fatura).btn_confirmar_pagamento
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante de pagamento da fatura$/) do
  validar_texto(MENSAGENS['cartao']['msg_sucesso_pagamento_fatura'])
  validar_texto(MENSAGENS['cartao']['msg_sucesso_pagamento'])
  validar_texto(MENSAGENS['cartao']['msg_transacao_pagamento'])
  validar_texto(MASSA['cartao']['valor_pago'])
  page(Geral).data_do_dia
end
