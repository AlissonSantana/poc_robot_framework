*** Settings ***
Resource    ./../resources/support/index.robot
Force Tags      weather

*** Test Cases ***
Cenário: GET weather by city name
    [Tags]  get_weather_by_city_name
    Quando realizar um GET para o endpoint get_weather_by_city_name
    Então validar o retorno da requisição GET para o endpoint get_weather_by_city_name

Cenário: GET weather by geographic coordinates
    [Tags]  get_weather_by_geo_coord
    Quando realizar um GET para o endpoint get_weather_by_geo_coord
    Então validar o retorno da requisição GET para o endpoint get_weather_by_geo_coord

Cenário: GET weather by city id
    [Tags]  get_weather_by_city_id
    Quando realizar um GET para o endpoint get_weather_by_city_id
    Então validar o retorno da requisição GET para o endpoint get_weather_by_city_id

Cenário: GET weather by ZIP
    [Tags]  get_weather_by_city_zip
    Quando realizar um GET para o endpoint get_weather_by_city_zip
    Então validar o retorno da requisição GET para o endpoint get_weather_by_city_zip

Cenário: GET weather of cities within a rectangle zone
    [Tags]  get_weather_rectangle_zone
    Quando realizar um GET para o endpoint get_weather_rectangle_zone
    Então validar o retorno da requisição GET para o endpoint get_weather_rectangle_zone

Cenário: GET weather of cities in cycle
    [Tags]  get_weather_cities_in_cycle
    Quando realizar um GET para o endpoint get_weather_cities_in_cycle
    Então validar o retorno da requisição GET para o endpoint get_weather_cities_in_cycle

Cenário: GET weather several cities ID
    [Tags]  get_weather_several_cities_id
    Quando realizar um GET para o endpoint get_weather_several_cities_id
    Então validar o retorno da requisição GET para o endpoint get_weather_several_cities_id

