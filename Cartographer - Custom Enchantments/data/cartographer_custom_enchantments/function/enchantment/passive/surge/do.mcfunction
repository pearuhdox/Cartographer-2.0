execute anchored feet positioned ^ ^ ^ rotated ~ 0 positioned ^ ^0.35 ^0.6 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation $damage ca.sprint_time_surge = @s ca.ench_surge_lvl
scoreboard players operation $damage ca.sprint_time_surge *= $2 ca.CONSTANT
scoreboard players operation $damage ca.sprint_time_surge *= $10 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 0.1 run scoreboard players get $damage ca.sprint_time_surge

scoreboard players set $surge_hit ca.sprint_time_surge 0

tag @s add ca.surge_owner

execute if entity @s[type=player] anchored feet positioned ^ ^ ^ rotated ~ 0 positioned ^ ^ ^0.5 positioned ~-1.5 ~ ~-1.5 as @e[type=#bb:hostile,tag=!ca.surge_cdl,dx=2,dy=2,dz=2] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/damage with storage cartographer:custom_enchantments
execute unless entity @s[type=player] anchored feet positioned ^ ^ ^ rotated ~ 0 positioned ^ ^ ^0.5 as @a[tag=!ca.surge_cdl,distance=..3] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/damage with storage cartographer:custom_enchantments

tag @s remove ca.surge_owner

execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:entity.breeze.shoot player @a[distance=..16] ~ ~ ~ 1 1.25

execute if score $surge_hit ca.sprint_time_surge matches 1.. positioned ^ ^ ^ rotated ~ 0 positioned ^ ^ ^2.5 run particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 1 1 normal

execute if score $surge_hit ca.sprint_time_surge matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/surge",duration:10,delay:000,parameters:{},merge_behavior:"custom"}
