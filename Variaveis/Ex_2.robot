*** Settings ***
Documentation    Exercício 2

*** Variables ***
@{frutas}    abacaxi    amora    açaí    abacate    uva


*** Test Cases ***
Lista de frutas    
    vetor de frutas

*** Keywords ***
vetor de frutas
    Log To Console    ${frutas}[0] 
    Log To Console    ${frutas}[1]
    Log To Console    ${frutas}[2]
    Log To Console    ${frutas}[3]
    Log To Console    ${frutas}[4]