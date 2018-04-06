class Poupanca < Calabash::IBase

  def aplicacao
    validar_texto('Aplicar')
    touch("* text:'Aplicar'")
  end

  def informar_valor(valor)
    validar_texto('Selecione um valor')
    touch("* text:'Selecione um valor'")
    page(Geral).aguardar_animacao
    keyboard_enter_text valor
    touch("* text:'OK'")
    page(Geral).aguardar_animacao
  end

  def btn_continuar
    validar_texto('Continuar')
    touch("* text:'Continuar'")
  end

  def btn_confirmar
    validar_texto('Confirmar')
    touch("* text:'Confirmar'")
  end

  def selecionar_conta_direita(quantity)
    validar_texto('  SELECIONE A CONTA DE RESGATE')
    quantity.times do
      touch(query("* id:'seta_direita'"))
    end
  end

  def selecionar_conta_esquerda
    validar_texto('Disponível:')
    validar_elemento('rowleft')
    touch(query("* id:'rowleft'"))
  end

  def resgate
    validar_texto('Resgatar')
    touch("* text:'Resgatar'")
  end

  def informar_valor_resgate(valor)
    validar_texto('Valor parcial')
    touch("* text:'Selecione um valor'")
    page(Geral).aguardar_animacao
    keyboard_enter_text valor
    touch("* text:'OK'")
    page(Geral).aguardar_animacao
  end
end
