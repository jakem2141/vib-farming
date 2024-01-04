fx_version 'cerulean'
game 'gta5'

description 'Farming'
author 'Vibrant Resources'
version '1.0'

shared_scripts {
    '@ox_lib/init.lua',
	'config.lua',
}

server_scripts  {
	'server/*.lua'
}

client_scripts {
	'client/*.lua',
	'menus/*lua',
}

lua54 'yes'