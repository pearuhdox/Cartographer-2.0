execute at @s anchored eyes positioned ^ ^-1.5 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:1.0,text:"+❤",color:"#F997EA",buffer_name:"regeneration"}

scoreboard players remove @s ca.sapper_buffer 2

execute if score @s ca.sapper_buffer matches 2.. run function cartographer_custom_statuses:enchantment/passive/sapper/popup_rec