*** Settings ***
Resource    ./../resources/support/index.robot
Force Tags      busca
Suite Setup     Run keywords  Set Selenium Timeout        ${TIMEOUT}  AND
...                           Set Selenium Implicit Wait  ${WAIT}
Test Setup      Run keywords  Open Browser  ${ZE_URL}     ${BROWSER}  AND
...                           Maximize Browser Window                 AND
...                           Confirmar Idade
Test Teardown   Run keywords  Capture Page Screenshot                 AND
...                           Close Browser

*** Test Cases ***
Cenário: Buscar produto no Zé Delivey
    [Documentation]     A busca permite usuário encontrar o produto desejado no local em questão, além de informar o preço e detalhes do produto
    [Tags]  buscar_produto
    Dado realizar uma busa no site do Zé Delivery
    Quando selecionar um produto para compra
    Entao validar PDP do produto selecionado