*** Settings ***
Library      RequestsLibrary
Library      Collections
Library      JSONLibrary
Library      DebugLibrary
Library      OperatingSystem
Library      String
Library      FakerLibrary  

# Service Keywords
Resource    ./../keywords/kw_weather.robot

# Service Objects
Resource    ./../service_objects/service_weather.robot


Variables   ./${ENV_NAME}.py

*** Variables ***
&{headers}  Connection=keep-alive  Accept-Encoding=gzip, deflate, br  User-Agent=PostmanRuntime/7.24.0  Cache-Control=no-cache  Accept=*/*

