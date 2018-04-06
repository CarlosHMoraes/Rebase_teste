class Comprovante < Calabash::IBase

  def selec_tipo_comprovante(comprovante)
    validar_texto('Selecione')
    touch(query("* text:'Selecione'"))
    validar_texto(comprovante)
    touch(query("* text:'#{comprovante}'"))
  end

  def btn_aplicar
    validar_texto('Período')
    validar_texto('Aplicar')
    touch("* text:'Aplicar'")
  end

  def selecionar_periodo(periodo)
    validar_elemento('spinner_periodo')
    touch("* id:'spinner_periodo'")
    touch("* text:'#{periodo}'")
  end

  def selecionar_detalhe_comprovante
    validar_texto('TED')
    touch("* text:'TED' index:0")
  end
end
