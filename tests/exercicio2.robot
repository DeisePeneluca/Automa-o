*** Settings ***

Documentation     Aqui estarão todos os exercicios do Prime Experts
...               focado na imersão com Robot
Library    String

*** Test Cases ***

Cenario: Imprimir numeros
    [Tags]    TESTES
    FOR    ${numero}    IN RANGE    0    10   
        Log To Console     Estou no número: ${numero}

    END

Cenario: Aprendendo IF
    [Tags]    TESTESS
    FOR    ${numero}    IN RANGE    0    10
        IF    ${numero} == 5    
            Log To Console    Estou no número: ${numero}
        ELSE IF    ${numero} == 8
            Log To Console    Estou no número: ${numero}
        END
    END
*** Keywords ***

