scoreboard players remove @s ca.charging_time 1
scoreboard players add @s ca.charging_anim 1

#execute if score @s ca.charging_anim matches 6 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.7 0.75

title @s times 0t 2t 0t
title @s title " "

#₍₎

execute if score @s ca.charging_time matches 1..20 run title @s times 0t 2t 0t
execute if score @s ca.charging_time matches 1..20 run title @s title " "


execute if score @s ca.charging_time matches 20 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"...................."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 19 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"..................."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 18 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":".................."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 17 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"................."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 16 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"................"},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 15 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"..............."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 14 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":".............."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 13 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"............."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 12 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"............"},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 11 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"..........."},{"bold":false,"color":"white","italic":false,"text":"₎"}]

execute if score @s ca.charging_time matches 10 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":".........."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 9 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"........."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 8 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"........"},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 7 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"......."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 6 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"......"},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 5 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"....."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 4 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"...."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 3 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"..."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 2 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":".."},{"bold":false,"color":"white","italic":false,"text":"₎"}]
execute if score @s ca.charging_time matches 1 run title @s subtitle [{"bold":false,"color":"white","italic":false,"text":"₍"},{"bold":false,"color":"green","italic":false,"text":"."},{"bold":false,"color":"white","italic":false,"text":"₎"}]

#execute unless score @s ca.charging_time matches 1 run title @s subtitle {"bold":false,"color":"green","italic":false,"text":"⚠"}
#execute if score @s ca.charging_time matches 1 run title @s subtitle {"bold":false,"color":"green","italic":false,"text":"⚠"}

execute if score @s ca.charging_time matches 1 run scoreboard players set @s ca.charging_anim 0
execute if score @s ca.charging_time matches 1 run tag @s remove ca.indicator_charging
execute if score @s ca.charging_time matches 1 run scoreboard players set @s ca.charging_time 0