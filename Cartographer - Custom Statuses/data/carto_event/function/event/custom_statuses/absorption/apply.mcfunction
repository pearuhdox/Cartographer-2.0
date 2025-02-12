$scoreboard players set $amount ca.abs_handler $(amount)
$scoreboard players set $duration ca.abs_handler $(seconds)
$scoreboard players set $cap ca.abs_handler $(cap)

scoreboard players operation @s ca.absorption_buffer += $amount ca.abs_handler

function cartographer_core:handlers/absorption/add

execute if score @s ca.absorption_buffer matches 2.. unless entity @s[type=player] anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:1.0,text:"+❤",color:"#F4ED5D",buffer_name:"absorption"}
