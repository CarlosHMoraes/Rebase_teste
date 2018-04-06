class BoletoItau < BoletoBancario::Itau

    $boleto_itau = BoletoItau.new do |boleto|
      boleto.conta_corrente        = '89755'
      boleto.agencia               = '0097'
      boleto.carteira              = '198'
      boleto.cedente               = 'Razao Social da Empresa'
      boleto.codigo_cedente        = '90901'
      boleto.endereco_cedente      = 'Rua nome da rua, 9999'
      boleto.numero_documento      = '12345678'
      boleto.sacado                = 'Nome do Sacado'
      boleto.documento_sacado      = '35433793990'
      boleto.data_vencimento       = Date.tomorrow
      boleto.valor_documento       = Faker::Number.decimal(2)
      boleto.seu_numero            = 1234
    end
end

class BoletoSantander < BoletoBancario::Santander

    $boleto_santander = BoletoSantander.new do |boleto|
      boleto.conta_corrente        = '5603706'
      boleto.agencia               = '38784'
      boleto.carteira              = '102'
      boleto.cedente               = 'Razao Social da Empresa'
      boleto.codigo_cedente        = '5297702'
      boleto.endereco_cedente      = 'Rua nome da rua, 9999'
      boleto.numero_documento      = '0019009778001'
      boleto.sacado                = 'Nome do Sacado'
      boleto.documento_sacado      = '35433793990'
      boleto.data_vencimento       = Date.tomorrow
      boleto.valor_documento       = Faker::Number.decimal(2)
    end
end
