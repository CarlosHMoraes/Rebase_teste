class Fatura < Calabash::IBase

  def selecionar_periodo_fat
    page(Geral).aguardar_animacao
    validar_texto('Aberta')
    $data_fat = query("* id:'data' index:2", :text).first
    touch(query("* id:'data' index:2"))
  end

  def selecionar_outra_fatura
    validar_texto('Aberta')
    touch(query("* text:'Aberta'"))
  end

  def informar_outro_valor_para_pagamento(valor)
    validar_texto('Outro valor')
    touch("* text:'Outro valor'")
    page(Geral).aguardar_animacao
    keyboard_enter_text valor
    touch("* text:'OK'")
  end

  def btn_continuar_pagamento
    validar_texto('Continuar')
    touch("* text:'Continuar'")
  end

  def btn_confirmar_pagamento
    validar_elemento('bt_normal.png')
    touch("* id:'bt_normal.png'")
  end
end
