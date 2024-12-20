scoreboard players remove @s ca.warning_time 1
scoreboard players add @s ca.warning_anim 1

execute if score @s ca.warning_anim matches 1 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.3 1.5
#execute if score @s ca.warning_anim matches 6 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.75

title @s times 0t 2t 0t
title @s title " "
title @s subtitle {"bold":false,"color":"red","italic":false,"text":"⚠"}

#execute unless score @s ca.warning_time matches 1 run title @s subtitle {"bold":false,"color":"red","italic":false,"text":"⚠"}
#execute if score @s ca.warning_time matches 1 run title @s subtitle {"bold":false,"color":"green","italic":false,"text":"⚠"}

execute if score @s ca.warning_time matches 1 run scoreboard players set @s ca.warning_anim 0
execute if score @s ca.warning_time matches 1 run tag @s remove ca.indicator_warning
execute if score @s ca.warning_time matches 1 run scoreboard players set @s ca.warning_time 0