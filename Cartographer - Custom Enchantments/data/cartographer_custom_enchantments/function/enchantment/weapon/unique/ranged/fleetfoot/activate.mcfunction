execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var = @s ca.ench_fleetfoot_lvl
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $20 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $100 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players add $force ca.ench_var 5000

execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var = @s ca.ench_fleetfoot_lvl
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $-1 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players remove $force ca.ench_var 6


execute if entity @s[type=player] unless predicate cartographer_core:player/sneaking run playsound minecraft:entity.breeze.jump player @a[distance=..16] ~ ~ ~ 1 1.25
execute unless entity @s[type=player] run playsound minecraft:entity.breeze.jump hostile @a[distance=..16] ~ ~ ~ 1 1.25

execute store result score $x_pos ca.ench_var run data get entity @s Pos[0] 10000
execute store result score $y_pos ca.ench_var run data get entity @s Pos[1] 10000
execute store result score $z_pos ca.ench_var run data get entity @s Pos[2] 10000

execute store result storage cartographer:custom_enchantments x_pos double 0.0001 run scoreboard players get $x_pos ca.ench_var
execute store result storage cartographer:custom_enchantments y_pos double 0.0001 run scoreboard players get $y_pos ca.ench_var
execute store result storage cartographer:custom_enchantments z_pos double 0.0001 run scoreboard players get $z_pos ca.ench_var

execute store result storage cartographer:custom_enchantments force int 1 run scoreboard players get $force ca.ench_var

execute if entity @s[type=player] unless predicate cartographer_core:player/sneaking at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/setup_effect with storage cartographer:custom_enchantments
execute unless entity @s[type=player] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/setup_effect with storage cartographer:custom_enchantments


execute if entity @s[type=player] run scoreboard players set @s ca.fleetfoot_cooldown 40
execute if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/fleetfoot",duration:40,delay:0,parameters:{},merge_behavior:"none"}

execute unless entity @s[type=player] run scoreboard players set @s ca.fleetfoot_cooldown 100
execute unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/fleetfoot",duration:100,delay:0,parameters:{},merge_behavior:"none"}
