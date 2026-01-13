--[[ FX Information ]]--
fx_version   'cerulean'
use_experimental_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'

--[[ Resource Information ]]--
name         'bzzz_prop_placer'
version      '1.1.0'
description  'Prop placer'
author       'Developer by Fantík Owned by Bzzz'

--[[ Manifest ]]--
shared_scripts {
    'configs/config.lua',
}

client_scripts {
    'client/warmenu.lua',
    'client/main.lua',
    'client/menu.lua',
}

server_scripts {
    'configs/s_config.lua',
    'server/main.lua',
}

ui_page "web/index.html"

files {
    'web/index.html',
    'web/index.js',
    'web/index.css',
    'configs/savedProps.json',
}

escrow_ignore {
    'configs/config.lua',
    'configs/s_config.lua',
    'configs/savedProps.json',
    'server/web/index.css',
    'server/web/index.html',
    'server/web/index.js',
	'readme.md'
}

dependencies {
    '/server:4500',                -- requires at least server build 4500
    '/onesync',                    -- requires state awareness to be enabled
}
dependency '/assetpacks'