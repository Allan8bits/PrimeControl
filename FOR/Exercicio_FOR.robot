*** Settings ***
Documentation    Teste de loops (FOR)

*** Variables ***
@{paises}    Brasil    Alemanha    Suíça    Noruega    Dinamarca

*** Test Cases ***
Teste do FOR IN RANGE (intervalos)
    Imprimir de 0 a 11
    

Teste FOR IN (lista)
    Imprimir uma lista

*** Keywords ***
Imprimir de ${A} a ${B}
    FOR    ${numero}    IN RANGE    ${A}    ${B}
        Log To Console    Estou no número: ${numero}
    END

Imprimir uma lista
    FOR    ${i}    IN    @{paises}
        Log To Console    ${i}
        
    END