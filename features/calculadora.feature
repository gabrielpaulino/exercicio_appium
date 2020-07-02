#language: pt

Funcionalidade: Validar as operações da calculadora

Cenário: Divisão entre dois números
    Dado que estou no aplicativo da calculadora
    Quando fizer a divisão entre dois números
    Então devo ver o resultado esperado

Cenário: Validar mensagem de dados incorretos informando placa e senha errados
    Dado que estou no aplicativo da calculadora
    Quando efetuar a divisão de 5 por 0
    Então devo visualizar a mensagem