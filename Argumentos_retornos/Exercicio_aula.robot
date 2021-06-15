*** Settings ***
Documentation    Exercicio E-mail

*** Variables ***
&{DADOS}    nome=allan    sobrenome=rodrigo    idade=17

*** Test Cases ***
Teste de e-mail
    ${EMAIL}    email completo    ${DADOS.nome}    ${DADOS.sobrenome}    ${DADOS.idade}
    Log To Console    ${EMAIL}


*** Keywords ***
email completo
    [Arguments]    ${nome}    ${sobrenome}    ${idade}
    [Return]    ${nome}_${sobrenome}_${idade}@robot.com
