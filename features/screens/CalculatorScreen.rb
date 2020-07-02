class CalculatorScreen 

    def initialize
        @display = 'com.google.android.calculator:id/display'
        @digito_8 = 'com.google.android.calculator:id/digit_8'
        @digito_4 = 'com.google.android.calculator:id/digit_4'
        @digito_5 = 'com.google.android.calculator:id/digit_5'
        @digito_2 = 'com.google.android.calculator:id/digit_2'
        @digito_0 = 'com.google.android.calculator:id/digit_0'
        @igual = 'com.google.android.calculator:id/eq'
        @dividir = 'com.google.android.calculator:id/op_div'
        @calculator = 'com.google.android.calculator:id/main_calculator'
        @resultado = 'com.google.android.calculator:id/result_final'
        @msg_resultado = 'com.google.android.calculator:id/result_preview'
    end

    def validar_home
        find_element(:id, @calculator).displayed?
    end

    def operacao_divisao
        find_element(:id, @digito_8).click
        find_element(:id, @dividir).click
        find_element(:id, @digito_4).click
        find_element(:id, @igual).click
    end

    def validar_resultado
        resultado = find_element(:id, @resultado).text
        expect(resultado.to_i).to eq(2)
    end

    def dividir_por_0(int1, int2)
        find_element(:id, "digit_#{int1}").click
        find_element(:id, @dividir).click
        find_element(:id, "digit_#{int2}").click
        find_element(:id, @igual).click
    end

    def valida_mensagem_resultado
        msg_oper_invalido = driver.find_element(:id, @msg_resultado)
        expect(msg_oper_invalido.text).to eql 'Impos. dividir por 0'
    end
end