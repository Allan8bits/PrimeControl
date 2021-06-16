*** Settings ***
Documentation    Teste de IF
Library    XML

*** Test Cases ***
Teste do 5 e 8
    Imprimir numeros de 0 a 11


*** Keywords ***
Imprimir numeros de ${x} a ${y}
    Log to Console    ${\n}
    FOR    ${i}    IN RANGE    ${x}    ${y}
        IF    '${i}' == '5' or '${i}' == '8'   
            Log To Console    Estou no número: ${i}
    
        END
    END