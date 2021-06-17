*** Settings ***
Documentation    Resource com as implementações das KWs da suiteWebTesting
Library          SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com

*** Keywords ***
## ---- SETUP
Abrir o Navegador
    Open Browser    browser=chrome

## ---- TEARDOWN
Fechar o Navegador
    Sleep    3s
    Close Browser        

## ---- STEPS
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible    xpath=//img[contains(@class,'logo img-responsive')]

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    # Wait Until Element Is Visible    xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'${PRODUTO}')]

Adicionar o produto "${PRODUTO}" no carrinho
    Mouse Over       xpath=(//a[@class='product-name'][contains(.,'${PRODUTO}')])[2]
    Click Element    xpath=//span[contains(.,'Add to cart')]
    Wait Until Element Is Visible    xpath=//span[contains(.,'Proceed to checkout')]
    Click Element    xpath=//span[contains(.,'Proceed to checkout')]

Conferir se o produto "${PRODUTO}" foi adicionado no carrinho
    Wait Until Element Is Visible    xpath=(//a[contains(.,'${PRODUTO}')])[4]

Conferir mensagem
    Wait Until Element Is Visible    xpath=(//font[contains(.,'Não foram encontrados resultados para a sua pesquisa '${PRODUTO}')])[2]

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over                       xpath=//a[contains(@title,'Women')]
    Wait Until Element Is Visible    xpath=(//a[contains(@title,'Summer Dresses')])[1]
    Wait Until Element Is Visible    xpath=(//a[contains(@title,'Dresses')])[1]
Clicar na sub categoria "Summer Dresses"
    Click Element                    xpath=(//a[contains(@title,'Summer Dresses')])[1]

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Scroll Element Into View         xpath=(//span[@class='available-now'])[1]    
    Wait Until Element Is Visible    xpath=//img[@src='http://automationpractice.com/img/p/1/2/12-home_default.jpg']
    Wait Until Element Is Visible    xpath=(//a[@class='product-name'])[2]
    Wait Until Element Is Visible    xpath=//img[@src='http://automationpractice.com/img/p/1/6/16-home_default.jpg']
    Wait Until Element Is Visible    xpath=(//a[@class='product-name'])[3]
    Wait Until Element Is Visible    xpath=//img[contains(@alt,'Printed Chiffon Dress')]
    Wait Until Element Is Visible    xpath=(//a[@class='product-name'])[4]

Clicar em "Sign in"
    Click Element                    xpath=//a[@class='login'][contains(.,'Sign in')]
Informar um e-mail válido
    Wait Until Element Is Visible    xpath=//span[contains(.,'Create an account')]
    Input Text                       id=email_create    allan.amantino6@gmail.com
Clicar em "Create an account"
    Click Element                    xpath=//span[contains(.,'Create an account')]
Preencher os dados obrigatórios
    Sleep    2s
    #title
    Wait Until Element Is Visible    xpath=//label[contains(@for,'id_gender1')]
    Click Element                    xpath=//label[@for='id_gender1'][contains(.,'Mr.')]
    #Primeiro Nome
    Input Text                       id=customer_firstname    ${NOME}
    #Scroll para baixa para uma melhor visão dos itens
    Scroll Element Into View         xpath=//label[@for='address1']
    #Segundo nome (sobrenome)
    Input Text                       id=customer_lastname    ${sobrenome}   
    #password
    Input Password                   id=passwd    ${senha}     
    #company
    Input Text                       id=company    PrimeExperts  
    #Scroll para baixa para uma melhor visão dos itens
    Scroll Element Into View         id=phone_mobile
Submeter cadastro
Conferir se o cadastro foi efetuado com sucesso
    
    