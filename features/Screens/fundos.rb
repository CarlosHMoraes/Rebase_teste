class Fundos < Calabash::IBase

  def tocar_investimentos
    validar_texto('Investimentos')
    touch("* text:'Investimentos'")
  end

  def tocar_fundos
    validar_texto('Fundos')
    touch("* text:'Fundos'")
  end

  def tocar_botao_resgatar
    validar_texto('Resgatar')
    touch("* text:'Resgatar'")
  end

  def tocar_botao_aplicar
    validar_texto('Aplicar')
    touch("* text:'Aplicar'")
  end

  def digitar_valor_parcial(valor)
    wait_for_elements_exist("ValorAplicacaoCell")
    touch("ValorAplicacaoCell")
    wait_for_none_animating(timeout:10)
    keyboard_enter_text(valor)
    touch("* text:'OK'")
  end

  def tocar_botao_continuar
    validar_texto('CONTINUAR')
    touch("* text:'CONTINUAR'")
  end

  def tocar_botao_concluir
    validar_texto('CONCLUIR')
    touch("* text:'CONCLUIR'")
  end

  def tocar_botao_valor_total
    touch("* {text CONTAINS[c] 'Valor total'}")
    valor_total= query("* {text CONTAINS[c] 'total'}", :text).first
    $valor_total= valor_total[12, valor_total.size - 12]
  end

  def tocar_botao_agendar
    validar_texto('Agendar')
    touch("* text:'Agendar'")
  end
end
