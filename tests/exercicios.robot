*** Settings ***

Documentation     Aqui estarão todos os exercicios do Prime Experts
...               focado na imersão com Robot

*** Variables ***
# Variaveis simples, usam dólar
${NOME}    Deise Peneluca

# Variáveis tipo Dicionário, que usa &

&{PESSOA}   
...     nome=Deise   
...     sobrenome=Peneluca   
...     idade=30
...     sexo=Feminino
...     rg=12312312
...     cpf=123.123.123-03

# Variaveis do tipo lista

@{FRUTAS}    
...    Morango    
...    Abacaxi    
...    Uva
...    Banana
...    Maçã

*** Test Cases ***

#Cenario: Imprimir Dicionário
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.sobrenome}

#Exercicio 1

Cenario: Exercicio 1
     Log To Console    ${PESSOA.nome}
     Log To Console    ${PESSOA.sobrenome}
     Log To Console    ${PESSOA.idade}
     Log To Console    ${PESSOA.sexo}
     Log To Console    ${PESSOA.rg}
     Log To Console    ${PESSOA.cpf}

Cenario: Exercicio 2

    Log To Console    \n ${FRUTAS[0]}
    Log To Console    \n ${FRUTAS[1]}
    Log To Console    \n ${FRUTAS[2]}
    Log To Console    \n ${FRUTAS[3]}
    Log To Console    \n ${FRUTAS[4]}
    Log To Console    ${FRUTAS}

Cenario: Criando email com argumentos
    [Tags]    EMAIL
    ${RESULTADO_EMAIL}    Criar email concatenado    deise    Peneluca    30
    Log To Console    ${RESULTADO_EMAIL} 

Cenario: contando de 0 a 9
    [Tags]    TESTE
     FOR    ${count}    IN RANGE    0    10   
        Log To Console    ${Count}

    END

*** Keywords ***

Criar email concatenado
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${EMAIL}       Catenate   SEPARATOR=_     ${NOME}    ${SOBRENOME}    ${IDADE}@robot.com
    [Return]       ${EMAIL}  

Contar de 0 a 9
    FOR    ${count}    IN RANGE    0    10   
        Log To Console    ${Count}

    END