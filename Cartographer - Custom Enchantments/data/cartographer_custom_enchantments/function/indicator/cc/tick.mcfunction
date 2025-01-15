scoreboard players remove @s ca.cc_time 1
scoreboard players add @s ca.cc_anim 1

execute if score @s ca.cc_anim matches 1 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.3 1.5
#execute if score @s ca.cc_anim matches 6 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.75

title @s times 0t 2t 0t
title @s title " "
execute if entity @s[tag=ca.has_custom_status_grounded] run title @s subtitle {"bold":false,"color":"#FFE0BF","italic":false,"bold":true,"text":"ₓ"}
execute if entity @s[tag=ca.has_custom_status_silenced] run title @s subtitle {"bold":false,"color":"#4660a8","italic":false,"bold":true,"text":"ₓ"}


#execute unless score @s ca.cc_time matches 1 run title @s subtitle {"bold":false,"color":"red","italic":false,"text":"⚠"}
#execute if score @s ca.cc_time matches 1 run title @s subtitle {"bold":false,"color":"green","italic":false,"text":"⚠"}

execute if score @s ca.cc_time matches 1 run scoreboard players set @s ca.cc_anim 0
execute if score @s ca.cc_time matches 1 run tag @s remove ca.indicator_cc
execute if score @s ca.cc_time matches 1 run scoreboard players set @s ca.cc_time 0