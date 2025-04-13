fx_version 'cerulean'
game 'gta5'

author 'Carri - ByLcarma'
description 'adn_esx_ownedcarthief - Sistema de robo y alarmas de vehículos para ESX (adaptado a oxmysql)'
version '1.0.6'

-- Servidor
server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/es.lua',
    'locales/fr.lua',
    'locales/br.lua',
    'config.lua',
    'server/main.lua'
}

-- Cliente
client_scripts {
    '@es_extended/locale.lua',
    'locales/en.lua',
    'locales/es.lua',
    'locales/fr.lua',
    'locales/br.lua',
    'config.lua',
    'client/main.lua'
}

-- Dependencias
dependencies {
    'oxmysql',
    'es_extended',
    'esx_vehicleshop'
}