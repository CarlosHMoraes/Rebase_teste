Dado(/^que seja selecionado o ambiente$/) do
  page(Geral).selecionar_ambiente(ENV['ENV'])
end

Dado(/^que acesse o aplicativo Mobile PF$/) do
  page(Login).btn_acessar
end

Quando(/^realizar o login com um "([^"]*)"$/) do |cliente|
  page(Login).digitar_cpf(MASSA['clientes'][cliente])
  page(Login).digitar_senha(MASSA['login']['senha'])
end

Quando(/^realizar o login com um cliente não correntista$/) do
  page(Login).digitar_cpf(MASSA['clientes']['cliente_nao_correntista'])
  page(Login).digitar_senha_cartao(MASSA['login']['senha_nao_correntista'])
end

Então(/^devo visualizar a home para clientes não correntista$/) do
  validar_elemento('OverviewNaoCorrentistaView')
end

Então(/^devo visualizar a home do aplicativo$/) do
  validar_texto('CONTAS')
end

Então(/^devo visualizar informativo de cso inativo$/) do
  wait_for_elements_exist(["UILabel text:'Você ainda NÃO ATIVOU seu \nCartão de Segurança On-line.'"], :timeout => 30)
  wait_for_elements_exist(["UILabel text:'Para ter mais serviços à sua disposição\nATIVE AGORA o seu \nCartão de Segurança On-line.'"], :timeout => 30)
  wait_for_elements_exist(["UILabel text:'Você ainda NÃO ATIVOU seu \nCartão de Segurança On-line.'"], :timeout => 30)
end
