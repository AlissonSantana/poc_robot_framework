*** Settings ***
Resource    ./../support/index.robot

*** Variables ***
&{city_name}            q=${CITY},${COUNTRY}       appid=${ID}
&{geo_coord}            lat=${LAT}  lon=${LON}     appid=${ID}
&{city_id}              id=${ID}    appid=${ID}
&{city_zip}             zip=${ZIP}   appid=${ID}
&{rec_zone}             bbox=${BBOX}   appid=${ID}
&{cities_cycle}         lat=${LAT}   lon=${LON}  cnt=${CNT}  appid=${ID}
&{group_cities}         id=$${ID_GROUP}     units=${UNITS}   appid=${ID}

*** Keywords ***

Quando realizar um GET para o endpoint get_weather_by_city_name
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER}  headers=${headers}  params=${city_name} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_by_city_name
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       coord
    Dictionary Should Contain Key     ${RESPONSE.json()}       weather
    Dictionary Should Contain Key     ${RESPONSE.json()}       id
    Dictionary Should Contain Key     ${RESPONSE.json()}       main
    Dictionary Should Contain Key     ${RESPONSE.json()}       base
    Dictionary Should Contain Key     ${RESPONSE.json()}       visibility
    Dictionary Should Contain Key     ${RESPONSE.json()}       wind
    Dictionary Should Contain Key     ${RESPONSE.json()}       clouds
    Dictionary Should Contain Key     ${RESPONSE.json()}       dt
    Dictionary Should Contain Key     ${RESPONSE.json()}       sys
    Dictionary Should Contain Key     ${RESPONSE.json()}       name
    Dictionary Should Contain Key     ${RESPONSE.json()}       cod

Quando realizar um GET para o endpoint get_weather_by_geo_coord
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER}  headers=${headers}  params=${geo_coord} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_by_geo_coord
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       coord
    Dictionary Should Contain Key     ${RESPONSE.json()}       weather
    Dictionary Should Contain Key     ${RESPONSE.json()}       id
    Dictionary Should Contain Key     ${RESPONSE.json()}       main
    Dictionary Should Contain Key     ${RESPONSE.json()}       base
    Dictionary Should Contain Key     ${RESPONSE.json()}       wind
    Dictionary Should Contain Key     ${RESPONSE.json()}       clouds
    Dictionary Should Contain Key     ${RESPONSE.json()}       dt
    Dictionary Should Contain Key     ${RESPONSE.json()}       sys
    Dictionary Should Contain Key     ${RESPONSE.json()}       name
    Dictionary Should Contain Key     ${RESPONSE.json()}       cod

Quando realizar um GET para o endpoint get_weather_by_city_id
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER}  headers=${headers}  params=${city_id} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_by_city_id
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       coord
    Dictionary Should Contain Key     ${RESPONSE.json()}       weather
    Dictionary Should Contain Key     ${RESPONSE.json()}       id
    Dictionary Should Contain Key     ${RESPONSE.json()}       main
    Dictionary Should Contain Key     ${RESPONSE.json()}       base
    Dictionary Should Contain Key     ${RESPONSE.json()}       wind
    Dictionary Should Contain Key     ${RESPONSE.json()}       clouds
    Dictionary Should Contain Key     ${RESPONSE.json()}       dt
    Dictionary Should Contain Key     ${RESPONSE.json()}       sys
    Dictionary Should Contain Key     ${RESPONSE.json()}       name
    Dictionary Should Contain Key     ${RESPONSE.json()}       cod

Quando realizar um GET para o endpoint get_weather_by_city_zip
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER}  headers=${headers}  params=${city_zip} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_by_city_zip
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       coord
    Dictionary Should Contain Key     ${RESPONSE.json()}       weather
    Dictionary Should Contain Key     ${RESPONSE.json()}       id
    Dictionary Should Contain Key     ${RESPONSE.json()}       main
    Dictionary Should Contain Key     ${RESPONSE.json()}       base
    Dictionary Should Contain Key     ${RESPONSE.json()}       wind
    Dictionary Should Contain Key     ${RESPONSE.json()}       clouds
    Dictionary Should Contain Key     ${RESPONSE.json()}       dt
    Dictionary Should Contain Key     ${RESPONSE.json()}       sys
    Dictionary Should Contain Key     ${RESPONSE.json()}       name
    Dictionary Should Contain Key     ${RESPONSE.json()}       cod

Quando realizar um GET para o endpoint get_weather_rectangle_zone
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER_CITIES}  headers=${headers}  params=${rec_zone} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_rectangle_zone
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       calctime
    Dictionary Should Contain Key     ${RESPONSE.json()}       cnt
    Dictionary Should Contain Key     ${RESPONSE.json()}       cod
    Dictionary Should Contain Key     ${RESPONSE.json()}       list

Quando realizar um GET para o endpoint get_weather_cities_in_cycle
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER_CITIES_CYCLE}  headers=${headers}  params=${cities_cycle} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_cities_in_cycle
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       cod
    Dictionary Should Contain Key     ${RESPONSE.json()}       count
    Dictionary Should Contain Key     ${RESPONSE.json()}       list
    Dictionary Should Contain Key     ${RESPONSE.json()}       message

Quando realizar um GET para o endpoint get_weather_several_cities_id
    Create Session      ${SESSION}  ${HOST_WEATHER}  headers=${headers}  cookies=${headers}  verify=false  disable_warnings=1
    ${RESPONSE}         GET Request  ${SESSION}  ${GET_WEATHER_GROUP}    headers=${headers}  params=${group_cities} 
    Set Test Variable   ${RESPONSE}

Então validar o retorno da requisição GET para o endpoint get_weather_several_cities_id
    Should Not Be Empty      ${RESPONSE.json()}
    ${SUCCESS_STATUS_CODE}  Convert To Integer  200
    Should Be Equal          ${RESPONSE.status_code}     ${SUCCESS_STATUS_CODE}
    Dictionary Should Contain Key     ${RESPONSE.json()}       cnt
    Dictionary Should Contain Key     ${RESPONSE.json()}       list