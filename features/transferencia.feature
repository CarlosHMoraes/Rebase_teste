#encoding: utf-8
#language: pt

Funcionalidade: Realizar Transfêrencia
  Eu como usuário
  Quero acessar o menu de tranfêrencias
  Para realizar tranferencias entre contas DOC e TED

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@transferencia @regressao @smoke
Cenário: Realizar transferência entre contas Santander
  Dado que acesse o menu de transfêrencias
  Quando realizar uma transferência entre contas Santander
  Então devo visualizar as informações do comprovante da transfência

@transferencia @regressao
Cenário: Realizar transferência do tipo DOC
  Dado que acesse o menu de transfêrencias
  Quando realizar uma transferência do tipo DOC
  Então devo visualizar as informações do comprovante do DOC

@transferencia @regressao
Cenário: Realizar transferência do tipo TED
  Dado que acesse o menu de transfêrencias
  Quando realizar uma transferência do tipo TED
  Então devo visualizar as informações do comprovante do TED

@transferencia @regressao
Cenário: Cadastrar favorecido de outro banco
  Dado que acesse o menu de transfêrencias
  Quando realizar a inclusão de favorecido de outro banco
  Então devo visualizar o novo favorecido cadastrado

@transferencia @regressao @smoke
Cenário: Realizar agendamento de transferencia entre contatas Santander
  Dado que acesse o menu de transfêrencias
  Quando realizar o agendamento de tranferencia
  Então devo visualizar as informações do agendamento da transferencia

  @transferencia @regressao
  Cenário: Realizar transferência agendada do tipo DOC
    Dado que acesse o menu de transfêrencias
    Quando realizar uma transferência agendada do tipo DOC
    Então devo visualizar as informações do comprovante do agendamento DOC
