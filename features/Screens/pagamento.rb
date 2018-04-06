class Pagamentos < Calabash::IBase

  def fechar_popup_camera
    validar_texto('Fechar')
    touch("* text:'Fechar'")
  end

  def informar_cod_barras(boleto)
    validar_texto('Entre com o código de barras')
    touch(query("* text:'Entre com o código de barras'"))
    keyboard_enter_text boleto
  end

  def btn_continuar
    validar_texto('CONTINUAR')
    touch("* text:'CONTINUAR'")
  end

  def acessar_agendamento
    validar_texto('Agendar')
    touch("* text:'Agendar'")
  end

  def selecionar_data(quantity)
    validar_elemento('slider_right')
      quantity.times do
        touch(query("* id:'slider_right'"))
      end
    touch("* text:'31'")
  end

  def informar_favorecido(nome)
    validar_texto('BOLETO BANCÁRIO')
    scroll_para_baixo(2)
    validar_texto('Beneficiário: ')
    touch("UITextField")
    keyboard_enter_text nome
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def btn_continuar_pag
    validar_texto('CONTINUAR')
    touch("* text:'CONTINUAR'")
  end
end
