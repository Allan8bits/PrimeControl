*** Settings ***
Documentation    Exercício 2

*** Variables ***
@{frutas}    abacaxi    amora    açaí    abacate    uva


*** Test Cases ***
Lista de frutas    
    vetor de frutas

*** Keywords ***
vetor de frutas
    FOR    ${i}    IN RANGE    ${frutas}
        Log To Console    ${frutas}[i]
        
    END