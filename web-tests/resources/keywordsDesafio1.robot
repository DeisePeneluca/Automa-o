*** Settings ***

Documentation    Consta nesse arquivo todas as Keywords para os testes do desafio web testing
Library          SeleniumLibrary
Library          String
Library    Collections
##Library          AppiumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        http://automationpractice.com/

*** Keywords ***

### Setup e Teardown 
Abrir navegador
    Open Browser    browser=${BROWSER} 
    Maximize Browser Window

Fechar o navegador
    Close Browser
##Cenário 2
Dado que acesso a home do site automationpractice
    Go To    ${URL}  
    Wait Until Element Is Visible    xpath=//a[contains(@title,'Women')]
    Title Should Be    My Store
        
And busco um produto no campo de pesquisa
    Click Element    id=search_query_top
    Input Text    name=search_query    Teste
    Click Element    xpath=//button[@name='submit_search']
    
Então a página retorna a mensagem "No results were found for your search"
    Wait Until Element Is Visible    xpath=//p[@class='alert alert-warning']

##Cenário 3
And acesso a categoria "Women"
    Mouse Over    xpath=(//a[@title='Women'])[1]
And acesso a sub categoria "Summer Dresses"
    Click Element    xpath=(//a[@title='Summer Dresses'])[1] 
Então o sistema exibe os produtos da sub categoria
    Wait Until Element Is Visible    xpath=//div[@class='content_scene_cat']

##Cenário 4
And crio uma conta preenchendo os dados obrigatórios
    Click Element    xpath=//a[@class='login']
    Input Text    id=email_create    annamae2721@uorak.com
    Click Button    id=SubmitCreate
    Wait Until Element Is Visible    xpath=//div[@class='radio'][contains(@id,'gender2')]
    Select Radio Button    id_gender    2  
    Input Text    xpath=//input[contains(@name,'customer_firstname')]    Deise
    Input Text    xpath=//input[contains(@name,'customer_lastname')]    Peneluca
    Input Text    xpath=//input[@type='password']    123456
    Input Text    xpath=//input[@name='firstname']    Deise
    Input Text    xpath=//input[@name='lastname']    Peneluca
    Input Text    xpath=//input[contains(@name,'address1')]    Rua 2, condominio leblon
    Input Text    xpath=//input[@name='city']    Salvador
    Select From List By Value    xpath=//select[@name='id_state']    26
    Input Text    id=postcode    40230
    Select From List By Value    xpath=//select[@name='id_country']    21
    Input Text    xpath=//input[@name='phone_mobile']    123456789
    Input Text    xpath=//input[@name='alias']    Casa de Maria   
Quando submeto o cadastro
    Click Button    xpath=//button[contains(.,'Register')]
    
Então confiro se o cadastro foi efetuado
    Wait Until Element Is Visible    xpath=//p[contains(@class,'info-account')]
    

