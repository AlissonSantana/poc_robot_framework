*** Settings ***
Resource    ./../resources/support/index.robot
Force Tags      cadastro
Test Setup      Run Keywords    Iniciar Device Android              AND
...                             Set Appium Timeout                  ${TIMEOUT}
Test Teardown   Run Keywords    Register Keyword To Run On Failure  AND
...                             Close All Applications

*** Test Cases ***
Cenário: Cadastrar no Zé delivery
    [Documentation]     Por meio do cadastro o usuário fornece dados essências para a realização do pedido, como Nome, Endereço e Cupons.
    [Tags]  cadastrar_usuário   wip
    Dado acessar a tela de cadastro
    Quando preencher os dados para cadastro
    Então validar o cadastro