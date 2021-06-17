*** Settings ***
Documentation    Exercicio E-mail

Suite Setup    KW para o setup da Suite
Test Setup     KW para o setup de cada teste

Test Teardown    KW para no teardown de cada teste
Suite Teardown   KW para no teardown da Suite

*** Variables ***
&{DADOS}    nome=allan    sobrenome=rodrigo    idade=17

*** Test Cases ***
Teste de e-mail
    ${EMAIL}    email completo    ${DADOS.nome}    ${DADOS.sobrenome}    ${DADOS.idade}
    Log To Console    ${EMAIL}


*** Keywords ***
KW para o setup da Suite
    Log To Console    Essa kw foi executada no começo da suite

KW para o setup de cada teste
    Log To Console    Essa kw foi executada antes de cada teste
    
KW para no teardown da Suite
    Log To Console    Essa kw foi executada no final da suite

KW para no teardown de cada teste
    Log To Console    Essa kw foi executada ao final de cada teste
email completo
    [Arguments]    ${a}    ${sobrenome}    ${idade}
    [Return]    ${a}_${sobrenome}_${idade}@robot.com
