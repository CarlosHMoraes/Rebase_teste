#encoding: utf-8
#language: pt

Funcionalidade: Recarga de Celular
  Eu como usuário
  Quero acessar a funcionalidade de recarga de celular
  Para realizar uma recarga de celular

Contexto: Selecionar ambiente para o teste
  Dado que seja selecionado o ambiente

@recarga @regressao @smoke
Cenário: Realizar recarga de celular
  Dado que acesse a opção de recargar no menu
  Quando realizar uma recarga de celular
  Então a recarga é realizada com sucesso

@recarga @regressao @smoke
Cenário: Realizar uma recarga programada
  Dado que acesse a opção de recargar no menu
  Quando programar uma recarga
  Então a recarga é programada com sucesso
