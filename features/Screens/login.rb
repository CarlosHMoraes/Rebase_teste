class Login < Calabash::IBase

  def btn_acessar
    validar_elemento('seta_up_faq')
    page(Geral).aguardar_animacao
    touch("UILabel text:'Acessar'")
  end

  def digitar_cpf(cpf)
    validar_texto('CPF')
    touch("UILabel text:'CPF'")
    clear_text("UIFieldEditor")
    keyboard_enter_text cpf
    touch("* text:'OK'")
  end

  def digitar_senha(senha)
    validar_texto('Senha')
    touch("UILabel text:'Senha'")
    keyboard_enter_text senha
    touch("* text:'OK'")

    wait_for_element_does_not_exist("* text:'Carregando'", timeout:30)
    page(Geral).aguardar_animacao
    if (element_exists "* text:'ID Santander'")
      touch("* {text CONTAINS[c] 'Habilitar mais tarde'}")
    end
  end

  def digitar_senha_cartao(senha)
    validar_texto('Senha do Cartão')
    touch("UILabel text:'Senha do Cartão'")
    keyboard_enter_text senha
    touch("* text:'OK'")
  end
end
