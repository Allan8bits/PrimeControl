*** Settings ***
Documentation    Teste de IF
Library    XML

*** Variables ***
@{PAIS}    Brasil    Cuba    Chile    Brasil    Paraguai    Brasil    China

*** Test Cases ***
Teste de IF    
    Imprimir apenas o Brasil


*** Keywords ***
Imprimir apenas o Brasil
    Log to Console    ${\n}
    FOR    ${i}    IN    @{PAIS}
        IF    '${i}' == 'Brasil'
            Log To Console    É tetraaaaaa!!!  
        ELSE
            Log To Console    Ah! ${i} não é o Brasil
        END
    END