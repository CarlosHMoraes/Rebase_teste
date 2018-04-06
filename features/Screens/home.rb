class Inicio < Calabash::IBase

  def exibir_informacao_carrossel(valor)
    page(Geral).validar_texto('CONTAS')
    page(Geral).scroll_ate_elemento_aparecer_na_tela("* {text CONTAINS[c] '#{valor}'}")
    coordenada= query("* {text CONTAINS[c]'#{valor}'}")[0]['rect']['center_y']
    btn_exibir= query("* id:'ico_exibir'").select{|i| i['rect']['center_y'] == coordenada}

    if btn_exibir.size == 1
      touch btn_exibir
    end
  end

  def tocar_seta_home
    page(Geral).aguardar_animacao
    validar_elemento('ico_seta_carrossel')
    touch(query("* id:'ico_seta_carrossel' index:0"))
  end

  def acessar_menu_conta
    validar_elemento('conta_detalhe')
    touch("* id:'conta_detalhe'")
  end

  def acessar_detalhe_fatura
    contem_texto('Limite Disponível')
    touch(["* {text CONTAINS 'Limite Disponível'}"])
  end
end
