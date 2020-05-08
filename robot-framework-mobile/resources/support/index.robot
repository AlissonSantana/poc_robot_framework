*** Settings ***
Library    AppiumLibrary  timeout=${GENERAL_TIMEOUT}  run_on_failure=Capture Page Screenshot
Library    RequestsLibrary
Library    Collections
Library    String
Library    BuiltIn
Library    DebugLibrary

# Keywords
Resource    ./../keywords/kw_cadastro.robot
Resource    ./../support/commons.robot

# Screens
Resource    ./../screens/screen_cadastro.robot

*** Variables ***

${REMOTE_URL}     http://localhost:4723/wd/hub
${PLATFORM_NAME_ANDROID}    Android
${DEVICE_NAME_ANDROID}    Nexus 5X
${PLATFORM_VERSION}       9
${APP_ANDROID}   ${CURDIR}/app/ze_delivery.apk
${APP_PACKAGE}    com.cerveceriamodelo.modelonow.debug
${AUTOMATION_NAME_ANDROID}    appium
${GENERAL_TIMEOUT}    30000
${TIMEOUT}             15s
