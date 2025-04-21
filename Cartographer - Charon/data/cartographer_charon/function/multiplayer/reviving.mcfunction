scoreboard players remove @s ca.lifetime 5

scoreboard players add @s ca.revive_time 1

scoreboard players set @s ca.revive_cdl 4

execute unless score @s ca.is_reviving matches 1.. run playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 3 0.85

effect clear @s invisibility

particle minecraft:cloud ~ ~-0.6 ~ 0.1 0.1 0.1 0.05 1 normal

scoreboard players operation $value ca.revive_time = @s ca.revive_time

rotate @s facing entity @p eyes

execute if score @s ca.revive_time matches 1 on passengers run data merge entity @s {interpolation_duration:1,start_interpolation:0,transformation:[0.700f, 0.000f, 0.000f,0.000f,0.000f, 0.700f, 0.000f,0.050f,0.000f, 0.000f, 0.700f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

# {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.0.1","fallback":"","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.0.2","fallback":"Reviving...","color":"dark_gray"}]}


execute if score @s ca.revive_time matches 1 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.0.1","fallback":"","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.0.2","fallback":"Reviving...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 3 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.1.1","fallback":"R","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.1.2","fallback":"eviving...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 5 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.2.1","fallback":"Re","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.2.2","fallback":"viving...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 7 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.3.1","fallback":"Rev","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.3.2","fallback":"iving...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 9 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.4.1","fallback":"Revi","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.4.2","fallback":"ving...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 11 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.5.1","fallback":"Reviv","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.5.2","fallback":"ing...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 13 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.6.1","fallback":"Revivi","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.6.2","fallback":"ng...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 15 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.7.1","fallback":"Revivin","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.7.2","fallback":"g...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 17 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.8.1","fallback":"Reviving","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.8.2","fallback":"...","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 19 on passengers run data modify entity @s text set value {"translate":"cartographer.charon.shade.revive_progress.display.format","fallback":"[%s%s]","color":"white","with":[{"translate":"cartographer.charon.shade.revive_progress.display.9.1","fallback":"Reviving...","color":"aqua"},{"translate":"cartographer.charon.shade.revive_progress.display.9.2","fallback":"","color":"dark_gray"}]}

execute if score @s ca.revive_time matches 20.. run scoreboard players set $revive_health_pot ca.shade_health 0
execute if score @s ca.revive_time matches 20.. run function cartographer_charon:multiplayer/do_revive

execute if score $value ca.revive_time matches 1 run function cartographer_charon:multiplayer/notify/start
execute if score $value ca.revive_time matches 4 run function cartographer_charon:multiplayer/notify/start
execute if score $value ca.revive_time matches 8 run function cartographer_charon:multiplayer/notify/start
execute if score $value ca.revive_time matches 12 run function cartographer_charon:multiplayer/notify/start
execute if score $value ca.revive_time matches 16 run function cartographer_charon:multiplayer/notify/start

scoreboard players set @s ca.is_reviving 45