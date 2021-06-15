*** Settings ***
Documentation    Teste de loops (FOR)

*** Variables ***
@{FRUTAS}    maça    banana    uva

*** Test Cases ***
Teste do FOR IN RANGE (intervalos)
    Imprimir de 0 a 8
    Log To Console    /n
    Imprimir de 10 a 20

Teste FOR IN (lista)
    Imprimir uma lista

*** Keywords ***
Imprimir de ${A} a ${B}
    FOR    ${numero}    IN RANGE    ${A}    ${B}
        ${RESULTADO}    Evaluate    ${numero}+10
        Log To Console    ${RESULTADO}
    END

Imprimir uma lista
    FOR    ${i}    IN    @{FRUTAS}
        Log To Console    ${i}
        
    END