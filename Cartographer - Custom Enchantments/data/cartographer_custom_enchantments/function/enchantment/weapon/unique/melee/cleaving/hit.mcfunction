execute store result score $damage ca.ench_var run attribute @s attack_damage get 100
execute store result score $mult ca.ench_var run attribute @s sweeping_damage_ratio get 100
scoreboard players add $mult ca.ench_var 100

scoreboard players operation $damage ca.ench_var *= $80 ca.CONSTANT
scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT

scoreboard players operation $damage ca.ench_var *= $mult ca.ench_var
scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT


scoreboard players set $range ca.ench_var 400
execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $range ca.ench_var += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var /= $100 ca.CONSTANT

scoreboard players operation $half_range ca.ench_var = $range ca.ench_var
scoreboard players operation $range_1 ca.ench_var = $range ca.ench_var

scoreboard players operation $half_range ca.ench_var /= $2 ca.CONSTANT
scoreboard players remove $range_1 ca.ench_var 100

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_var
execute store result storage cartographer:custom_enchantments range double 0.01 run scoreboard players get $range ca.ench_var
execute store result storage cartographer:custom_enchantments half_range double 0.01 run scoreboard players get $half_range ca.ench_var
execute store result storage cartographer:custom_enchantments range_1 double 0.01 run scoreboard players get $range_1 ca.ench_var

playsound minecraft:entity.player.attack.sweep player @a[distance=..16] ~ ~ ~ 1 0.75
execute at @s anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^ ^-0.75 ^1 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force


tag @s add ca.cleaving_owner

execute as @s at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/macro with storage cartographer:custom_enchantments

tag @s remove ca.cleaving_owner

scoreboard players set @s ca.special_attack_cooldown 3
function carto_event:api/create_single_entity_event {event:"custom_ench/special_attack_cooldown",duration:3,delay:0,parameters:{},merge_behavior:"merge"}
