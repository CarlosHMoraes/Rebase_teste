class Menu < Calabash::IBase

  def abrir_menu
    page(Geral).aguardar_animacao
    validar_texto('CONTAS')
    if (element_exists "* id:'ico_menu_notification'")
      touch("* id:'ico_menu_notification'")
    else
      touch("* id:'menuIcon.png'")
    end
    page(Geral).aguardar_animacao
  end

  def acessar_conta_corrente
    validar_texto('Conta Corrente')
    touch("* text:'Conta Corrente'")
  end

  def acessar_saldo
    validar_texto('Saldo')
    touch("* text:'Saldo'")
  end

  def acessar_cartao
    validar_texto('Cartões')
    touch("* text:'Cartões'")
  end

  def acessar_faturas
    validar_texto('Faturas')
    touch(query("* text:'Faturas'"))
  end

  def acessar_pagamentos
    validar_texto('Pagamentos')
    touch(query("* text:'Pagamentos'"))
  end

  def acessar_pag_cod_barras
    validar_texto('Código de Barras')
    touch(query("* text:'Código de Barras'"))
  end

  def acessar_comprovantes
    scroll("UIView", :down)
    validar_texto('Comprovantes')
    touch(query("* text:'Comprovantes'"))
  end

  def acessar_transferencia
    validar_texto('Transferências')
    touch(query("* text:'Transferências'"))
  end

  def acessar_poupanca
    validar_texto('Poupança')
    touch(query("* text:'Poupança'"))
  end

  def acessar_pagamento_fatura
    validar_texto('Pagamento de Fatura')
    touch("* text:'Pagamento de Fatura'")
  end

  def acessar_emprestimos
    validar_texto('Empréstimos')
    touch("* text:'Empréstimos'")
  end

  def acessar_simular_contratar_emp
    validar_texto('Simular e contratar')
    touch("* text:'Simular e contratar'")
  end

  def acessar_recarga_telefone
    scroll("UIView", :down)
    validar_texto('Recarga de Telefone')
    touch("* text:'Recarga de Telefone'")
  end
end
