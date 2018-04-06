class Recarga < Calabash::IBase

  def selecionar_operadora
    validar_texto('Selecione a operadora')
    touch("* text:'Selecione a operadora'")
    page(Geral).aguardar_animacao
    validar_texto('Recarga')
    operadora= MASSA['recarga']['operadora_oi']
    page(Geral).scroll_ate_elemento_aparecer_na_tela("* text:'#{operadora}'")
    touch("* text:'#{operadora}' index:0")
    touch("* text:'#{operadora}' index:1")
  end

  def informar_ddd(params)
    validar_elemento('text_ddd')
    touch("* id:'text_ddd'")
    page(Geral).aguardar_animacao
    keyboard_enter_text params
  end

  def informar_cel
    validar_elemento('text_numero')
    touch("* id:'text_numero'")
    $numero_celular = Faker::Base.numerify('9########')
    keyboard_enter_text $numero_celular
    ddd_cel= MASSA['recarga']['ddd_cel']
    $num_formatado= "(#{ddd_cel}) #{$numero_celular[0,5]}-#{$numero_celular[5,4]}"
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def repetir_ddd(params)
    validar_elemento('text_ddd')
    touch("* id:'text_ddd' index:3")
    page(Geral).aguardar_animacao
    keyboard_enter_text params
  end

  def repetir_cel
    validar_elemento('text_numero')
    touch("* id:'text_numero' index:1")
    keyboard_enter_text $numero_celular
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def btn_continuar
    validar_texto('Continuar')
    touch("* text:'Continuar'")
  end

  def btn_confirmar
    validar_texto('Confirmar')
    touch("* text:'Confirmar'")
  end

  def btn_recarga_programada
    validar_texto('Recarga Programada')
    touch("* text:'Recarga Programada'")
  end

  def btn_programar
    validar_texto('Programar')
    touch("* text:'Programar'")
  end

  def selecionar_valor_recarga(valor)
    validar_texto('Selecione um valor')
    touch("* text:'Selecione um valor'")
    page(Geral).aguardar_animacao
    validar_texto(valor)
    touch("* text:'#{valor}'")
  end
end
