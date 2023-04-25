fx_version 'adamant'
game 'gta5'

author 'myScripts'
description 'Crafting system for FiveM'
version '1.2'

ui_page 'html/index.html'

files {
    'html/index.html',

	'html/css/style.css',
	
	'html/img/*.png',
	'html/img/bandage.png',
	'html/img/black_money.png',
	'html/img/bolchips.png',
	'html/img/copper.png',
	'html/img/bread.png',
	'html/img/iron.png',
	'html/img/WEAPON_PISTOL50.png',
	'html/img/bagel.png',
	
	'html/js/script.js'
}

client_script {
	"config.lua",
	"client.lua",
}

server_script {
	"config.lua",
	"server.lua",
}