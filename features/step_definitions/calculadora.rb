Dado('que estou no aplicativo da calculadora') do
    calculadora = CalculatorScreen.new
    calculadora.validar_home
end

Quando('fizer a divisão entre dois números') do
    calculadora = CalculatorScreen.new
    calculadora.operacao_divisao
end

Então('devo ver o resultado esperado') do
    calculadora = CalculatorScreen.new
    calculadora.validar_resultado
end

Quando('efetuar a divisão de {int} por {int}') do |a, b|
  calculadora = CalculatorScreen.new
  calculadora.dividir_por_0(a, b)
end

Então('devo visualizar a mensagem') do
  calculadora = CalculatorScreen.new
  calculadora.valida_mensagem_resultado
end