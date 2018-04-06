class Conta < Calabash::IBase

  def acessar_saldo
    page(Geral).aguardar_animacao
    validar_texto('Saldo')
    touch("* text:'Saldo'")
  end

  def acessar_recarga
    validar_elemento('Extrato_universitario_normal')
    scroll_para_baixo(1)
    validar_elemento('Recarga_universitario_normal')
    touch(query("* id:'Recarga_universitario_normal'"))
  end

  def acessar_extrato
    page(Geral).aguardar_animacao
    validar_texto('Extrato')
    touch(query("* text:'Extrato'"))
  end

  def acessar_emprestimos
    validar_elemento('image_emprestimos')
    touch(query("* id:'image_emprestimos'"))
  end
end
