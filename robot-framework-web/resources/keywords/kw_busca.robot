*** Settings ***
Library     ./../page_objects/busca.py

*** Keywords ***

Dado realizar uma busa no site do Zé Delivery
    Enter Street Name       Rua Fradique Coutinho
    Click Auto Complete
    Enter Adrress Number            1632
    Enter Adrress Complement        Zé Delivery    
    Click Display Products

Quando selecionar um produto para compra
    Click Product

Entao validar PDP do produto selecionado
    Validate Product
    Page Should Contain        Skol
