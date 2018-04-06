Dado(/^que acesse o menu de empréstimo$/) do
  step 'que acesse o aplicativo Mobile PF'
  step 'realizar o login com um "cliente_com_limite_cp"'
  page(Menu).abrir_menu
  page(Menu).acessar_emprestimos
  page(Menu).acessar_simular_contratar_emp
end

Quando(/^simular uma contratação de empréstimo pessoal$/) do
  page(Emprestimo).informar_valor_emprestimo('100,00')
  page(Emprestimo).selecionar_parcelas
  page(Emprestimo).btn_simular
  page(Emprestimo).selecionar_valor_menor
  scroll_para_baixo(1)
  page(Emprestimo).btn_continuar
  validar_texto('Valor do empréstimo:')
  scroll_para_baixo(2)
  page(Emprestimo).btn_continuar_contratacao
  validar_elemento('EmprestimosAlertaContratoView')
  scroll_para_baixo(3)
  validar_elemento('EmprestimosAlertaContratoView')
  scroll_para_baixo(2)
  page(Emprestimo).btn_concordo
  validar_texto('Confirmação')
  scroll_tela_baixo(1)
  page(Emprestimo).check_condicoes
  page(Emprestimo).check_custo_efetivo
  page(Emprestimo).check_operacao
  scroll_tela_baixo(1)
  page(Emprestimo).btn_continuar_confir
  page(Geral).informar_cso
end

Então(/^devo visualizar o comprovante de contratação do emprestimo$/) do
  validar_texto(MENSAGENS['emprestimo']['msg_contratacao'])
  validar_texto(MENSAGENS['emprestimo']['msg_sucesso'])
  validar_texto(MASSA['emprestimo']['valor'])
  validar_texto(MASSA['emprestimo']['valor'])
  scroll_tela_baixo(3)
end
