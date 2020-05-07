*** Variables ***

# Default
${GET_WEATHER}     /weather
${SESSION}      weather
${ID}       439d4b804bc8187953eb36d2a8c26a02

# By City
${CITY}     London
${COUNTRY}      uk

# By Lon & Lat
${LAT}      35
${LON}      139

# By ID
${ID}       2172797

# By ZIP
${ZIP}      94040,us

# By Rectangle Zone
${GET_WEATHER_CITIES}       box/city
${BBOX}                     2,32,15,37,10

# By cities cycles
${GET_WEATHER_CITIES_CYCLE}  /find
${CNT}      10

# By several cities ID
${GET_WEATHER_GROUP}     /group
${ID_GROUP}              524901,703448,2643743
${UNITS}                 metric


