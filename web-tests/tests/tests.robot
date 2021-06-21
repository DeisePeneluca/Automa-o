*** Settings ***

Documentation    Scripts automatizados web do Desafio Final Web Testing

Resource         ../resources/keywordsDesafio1.robot                 

Test Setup       Abrir navegador  
Test Teardown    Fechar o navegador

*** Test Cases ***
Cenario: Caso de teste 2 - Pesquisar produto não existente
    Dado que acesso a home do site automationpractice
    And busco um produto no campo de pesquisa
    Então a página retorna a mensagem "No results were found for your search"

Cenario: Caso de teste 3 - Listar Produtos
    Dado que acesso a home do site automationpractice
    And acesso a categoria "Women"
    And acesso a sub categoria "Summer Dresses"
    Então o sistema exibe os produtos da sub categoria

Cenario: Caso de teste 4 - Adicionar Cliente
    Dado que acesso a home do site automationpractice
    And crio uma conta preenchendo os dados obrigatórios
    Quando submeto o cadastro
    Então confiro se o cadastro foi efetuado
    