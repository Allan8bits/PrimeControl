*** Settings ***
Documentation    Argumentos e Retornos

*** Test Cases ***
${RESULTADO_SOMA}    Somar os numeros    1    2

*** Keywords ***
Somar os numeros
    [Arguments]    ${X}    ${Y}
    ${RESULTADO}    Evaluate    ${X}+${Y}
    [Return]    ${RESULTADO}