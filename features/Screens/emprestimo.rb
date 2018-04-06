class Emprestimo < Calabash::IBase

  def btn_contratar_emprestimo
    sleep 2
    touch("* text:'Contratação'")
  end

  def btn_continuar
    validar_texto('Continuar')
    touch("* text:'Continuar'")
  end

  def btn_concordo
    validar_texto('Concordo')
    touch("* text:'Concordo'")
  end

  def check_condicoes
    validar_elemento('checkOff.png')
    touch("* id:'checkOff.png'")
  end

  def check_custo_efetivo
    validar_elemento('checkOff.png')
    touch("* id:'checkOff.png'")
  end

  def check_operacao
    validar_elemento('checkOff.png')
    touch("* id:'checkOff.png'")
  end

  def btn_continuar_confir
    validar_texto('Confirmar')
    touch("* text:'Confirmar'")
  end

  def btn_continuar_contratacao
    validar_texto('Continuar contratação')
    touch("* text:'Continuar contratação'")
  end

  def selecionar_valor_menor
    validar_elemento('seta_direita')
    touch("button id:'seta_direita'")
  end

  def selecionar_valor_maior
    validar_elemento('rowleft')
    touch("* id:'rowleft'")
  end

  def informar_valor_emprestimo(valor)
    validar_texto('Quanto você precisa?')
    touch("* text:'Quanto você precisa?'")
    keyboard_enter_text valor
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def selecionar_parcelas
    validar_texto("Quantidade de parcelas")
    touch("* text:'Quantidade de parcelas'")
    validar_texto("OK")
    touch("* text:'OK'")
  end

  def btn_simular
    validar_texto("Simular")
    touch("* text:'Simular'")
  end
end
