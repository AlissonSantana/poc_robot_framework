*** Settings ***
Resource    ./../support/index.robot

*** Keywords ***

Dado acessar a tela de cadastro
    Wait Until Element Is Visible   ${CRIAR_MINHA_CONTA} 
    Click Element                   ${CRIAR_MINHA_CONTA}

Quando preencher os dados para cadastro    
    Wait Until Element Is Visible   ${FULL_NAME}
    Input Text                      ${FULL_NAME}            Teste Teste
    Wait Until Element Is Visible   ${EMAIL_ADDRESS}
    Input Text                      ${EMAIL_ADDRESS}        email@email.com.br.io
    Wait Until Element Is Visible   ${PASSWORD} 
    Input Text                      ${PASSWORD}             Teste@123
    Wait Until Element Is Visible   ${DOCUMENT}
    Input Text                      ${DOCUMENT}             94329699087
    Wait Until Element Is Visible   ${PHONE_NUMBER}
    Input Text                      ${PHONE_NUMBER}         11999990000
    Wait Until Element Is Visible   ${AGE}              
    Click Element                   ${AGE}
    Wait Until Element Is Visible   ${CONFIRM_AGE}
    Click Element                   ${CONFIRM_AGE}
    Wait Until Element Is Visible   ${CADASTRAR_CONTINUAR}
    Click Element                   ${CADASTRAR_CONTINUAR}

Então validar o cadastro
    Page Should Contain Element     ${CODE_INPUT} 
    Page Should Contain Element     ${EDIT_PHONE}
