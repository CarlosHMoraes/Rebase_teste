class Transferencia < Calabash::IBase

  def selecionar_favorecido(favorecido)
    validar_texto('Selecione')
    touch("* text:'Selecione'")
    validar_elemento('ico_limites_padrao_lista')
    touch("* text:'#{favorecido}'")
  end

  def informar_valor(valor)
    validar_texto('R$ 0,00')
    touch("* text:'R$ 0,00'")
    keyboard_enter_text valor
    validar_texto('OK')
    touch(query("* text:'OK'"))
  end

  def btn_transferir
    validar_texto('TRANSFERIR')
    touch("* text:'TRANSFERIR'")
  end

  def btn_continuar_transf
    validar_texto('CONTINUAR')
    touch(query("* text:'CONTINUAR'"))
  end

  def btn_confirmar_transf
    validar_texto('CONFIRMAR')
    touch(query("* text:'CONFIRMAR'"))
  end

  def btn_DOC
    validar_texto('DOC')
    touch("* text:'DOC'")
  end

  def btn_incluir_favorecido
    validar_texto('Outra conta')
    touch("* text:'Outra conta'")
  end

  def selecionar_banco_favorecido(banco)
    validar_texto('Banco')
    touch("* text:'Banco'")
    validar_texto(banco)
    touch("* text:'#{banco}'")
  end

  def informar_agencia_favorecido(agencia)
    validar_texto('Agência')
    touch("* text:'Agência'")
    keyboard_enter_text agencia
  end

  def informar_conta_favorecido(conta)
    validar_texto('Conta')
    touch("* text:'Conta'")
    keyboard_enter_text conta
  end

  def informar_digito_favorecido(digito)
    validar_texto('Dígito')
    touch("* text:'Dígito'")
    keyboard_enter_text digito
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def informar_nome_favorecido(nome)
    validar_texto('Nome')
    touch("* text:'Nome'")
    keyboard_enter_text nome
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def informar_documento_favorecido
    validar_texto('CPF/CNPJ')
    touch("* text:'CPF/CNPJ'")
    keyboard_enter_text Faker::CPF.numeric
    validar_texto('OK')
    touch("* text:'OK'")
  end

  def fleg_cadastrar_favorecido
    validar_elemento('cad_favorecido')
    touch("* id:'cad_favorecido'")
  end

  def btn_confirmar_cadastro_favorecido
    validar_texto('Continuar')
    touch(query("* text:'Continuar'"))
  end

  def selecionar_inclusao_favorecido
    validar_texto('Selecione')
    touch("* text:'Selecione'")
  end

  def btn_agendar_tranferencia
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
end
