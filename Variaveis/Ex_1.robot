*** Settings ***
Documentation    Exercício 1

*** Variables ***
&{PESSOA}    nome=Allan    sobrenome=Rodrigo    idade=17    
...          peso=75kg    altura=1,79m    curso=Ciência da Computação   


*** Test Cases ***
Validar seis informações
    Logar no meu terminal as caracteristicas

*** Keywords ***
Logar no meu terminal as caracteristicas
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome}, tenho ${PESSOA.idade} anos, ${PESSOA.peso}, ${PESSOA.altura} de altura e curso ${PESSOA.curso}.
    Log To Console    ${\n}
