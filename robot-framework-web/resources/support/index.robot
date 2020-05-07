*** Settings ***
Library      Collections
Library      DebugLibrary
Library      PageObjectLibrary
Library      SeleniumLibrary
Library      OperatingSystem
Library      String
Library      FakerLibrary
Library      JSONLibrary

Resource    ./../keywords/kw_busca.robot
Resource    ./../support/commons.robot


Variables   ./${ENV_NAME}.py

*** Variables ***
${BROWSER}    chrome
${TIMEOUT}    10
${WAIT}       10
