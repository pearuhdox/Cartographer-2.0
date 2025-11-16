scoreboard players remove @s ca.charging_time 1
scoreboard players add @s ca.charging_anim 1


execute if score @s ca.charging_time matches 1..20 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"white","italic":false,"text":"₍"}

execute if score @s ca.charging_time matches 20 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"...................."}
execute if score @s ca.charging_time matches 19 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"..................."}
execute if score @s ca.charging_time matches 18 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":".................."}
execute if score @s ca.charging_time matches 17 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"................."}
execute if score @s ca.charging_time matches 16 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"................"}
execute if score @s ca.charging_time matches 15 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"..............."}
execute if score @s ca.charging_time matches 14 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":".............."}
execute if score @s ca.charging_time matches 13 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"............."}
execute if score @s ca.charging_time matches 12 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"............"}
execute if score @s ca.charging_time matches 11 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"..........."}

execute if score @s ca.charging_time matches 10 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":".........."}
execute if score @s ca.charging_time matches 9 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"........."}
execute if score @s ca.charging_time matches 8 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"........"}
execute if score @s ca.charging_time matches 7 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"......."}
execute if score @s ca.charging_time matches 6 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"......"}
execute if score @s ca.charging_time matches 5 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"....."}
execute if score @s ca.charging_time matches 4 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"...."}
execute if score @s ca.charging_time matches 3 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"..."}
execute if score @s ca.charging_time matches 2 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":".."}
execute if score @s ca.charging_time matches 1 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"green","italic":false,"text":"."}

execute if score @s ca.charging_time matches 1..20 run data modify storage cartographer_core:indicators text append value {"bold":false,"color":"white","italic":false,"text":"₎"}

#execute unless score @s ca.charging_time matches 1 run title @s subtitle {"bold":false,"color":"green","italic":false,"text":"⚠"}
#execute if score @s ca.charging_time matches 1 run title @s subtitle {"bold":false,"color":"green","italic":false,"text":"⚠"}

execute if score @s ca.charging_time matches 1 run scoreboard players set @s ca.charging_anim 0
execute if score @s ca.charging_time matches 1 run tag @s remove ca.indicator_charging
execute if score @s ca.charging_time matches 1 run scoreboard players set @s ca.charging_time 0

tag @s add ca.display_indicator