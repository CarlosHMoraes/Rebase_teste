class Geral < Calabash::IBase

  def selecionar_ambiente(ambiente)
    wait_for_elements_exist(["* text:'#{ambiente}'"], :timeout => 30)
    touch(query("* text:'#{ambiente}'"))
  end

  def fechar_tour
    validar_elemento('btn_fechar')
    touch("* id:'btn_fechar'")
  end

  def scroll_direita(quantity)
    quantity.times do
      perform_action('drag', 90, 0, 50, 50, 50)
    end
  end

  def informar_cso
    validar_texto('Validação')
    numero_cso= query("*", :text).select{|i| i.size == 2}.first().to_s()
    for i in 0..1
      numero_cso.size.times do |indice|
        touch("UIButtonLabel {text CONTAINS[c] '#{numero_cso[indice]}'}")
      end
    end
    touch("* text:'Confirmar'")
  end

  def selecionar_direita
    validar_elemento('rowright')
    touch("* id:'rowright'")
  end

  def selecionar_esquerda
    validar_elemento('rowleft')
    touch("* id:'rowleft'")
  end

  def selecionar_cartao(quantity)
    validar_elemento('seta_direita')
    quantity.times do
      touch(query("* id:'seta_direita' index:0"))
    end
  end

  def data_do_dia
    data = Time.now
    data = data.strftime("%d/%m/%Y")
    wait_for_elements_exist(["* {text CONTAINS '#{data}'}"], :timeout => 30)
  end

  def data_de_amanha
    data = Date.tomorrow
    data = data.strftime("%d/%m/%Y")
    wait_for_elements_exist(["* {text CONTAINS '#{data}'}"], :timeout => 30)
  end

  def aguardar_animacao
    wait_for_none_animating(:timeout => 40)
  end
end

  def validar_texto(*args)
    wait_for_none_animating(:timeout => 40)
    args.each do |text|
      wait_for_elements_exist(["* text:'#{text}'"], :timeout => 40)
    end
  end

  def validar_elemento(*args)
    wait_for_none_animating(:timeout => 40)
    args.each do |elements|
      wait_for_elements_exist(["* id:'#{elements}'"], :timeout => 40)
    end
  end

  def scroll_para_baixo(quantity)
    quantity.times do
      scroll("scrollView index:0", :down)
    end
  end

  # def scroll_tela_baixo(quantidade)
  #     [0..quantidade.to_i].each do |i|
  #       scroll("tableView", :down)
  #     end
  #   end

  def scroll_tela_baixo(quantidade)
    quantidade.to_i.times do
      scroll("UIView", :down)
    end
  end

  def down_view(quantity)
    quantity.times do
      perform_action('drag', 50, 50, 60, 40, 20)
    end
  end

  def contem_texto(texto)
    wait_for_none_animating(:timeout => 20)
    wait_for_elements_exist(["* {text CONTAINS '#{texto}'}"], :timeout => 40)
  end

  def scroll_para_esquerda(quantity)
    quantity.times do
      swipe :left, :query => "UIView", :offset => {:x => 133, :y => 0}
    end
  end

   #necessário para validar a data do resgate que é sempre 1 dia útil
  def proximo_dia_util
    data = Date.tomorrow
    while data.wday == 0 || data.wday == 6
      data+= 86400
    end
    data= data.strftime("%d/%m/%Y")
    wait_for_elements_exist("* {text CONTAINS[c] '#{data}'}", timeout:30)
  end

  def scroll_ate_elemento_aparecer_na_tela(id_elemento)
    wait_poll(:until_exists => id_elemento, :timeout => 30) do
      swipe(:up)
    end
  end

  def selecionar_data_desejada(dia, mes, ano)
    wait_for_none_animating(timeout:5)
    wait_for_elements_exist('CalendarView', timeout:30)
    meses= ['janeiro', 'fevereiro', 'março', 'abril', 'maio', 'junho', +
      + 'julho', 'agosto', 'setembro', 'outubro', 'novembro', 'dezembro']

    wait_poll(:until_exists => "* {text CONTAINS[c] '#{ano}'}", :timeout => 30) do
      touch("* id:'slider_right'")
    end

    wait_poll(:until_exists => "* {text CONTAINS[c] '#{meses[mes-1]}'}", :timeout => 30) do
      touch("* id:'slider_right'")
    end

    touch("* text:'#{dia}'")
    wait_for_none_animating(timeout:5)
  end
