*** Settings ***
Documentation    Meu teste de variaveis

*** Variables ***
${MENSAGEM}    Hello World!!

*** Test Cases ***
Meu teste de impressão de terminal
    Logar no meu terminal uma mensagem

*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    ${MENSAGEM}