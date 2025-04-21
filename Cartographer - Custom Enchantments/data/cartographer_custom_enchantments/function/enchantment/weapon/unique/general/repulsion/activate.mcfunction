scoreboard players operation $damage ca.ench_var = @s ca.ench_repulsion_lvl
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_var += @s ca.attr_aoe_damage_value

execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_var /= $100 ca.CONSTANT


execute unless entity @s[type=player] run scoreboard players set $force ca.ench_var 7000
execute if entity @s[type=player] run scoreboard players set $force ca.ench_var 5

execute if entity @s[type=player] run scoreboard players set $range ca.ench_var 500
execute unless entity @s[type=player] run scoreboard players set $range ca.ench_var 400

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $range ca.ench_var += @s ca.attr_aoe_size_value

execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var /= $100 ca.CONSTANT


execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var
execute store result storage cartographer:custom_enchantments range double 0.01 run scoreboard players get $range ca.ench_var


tag @s add ca.repulsion_owner

scoreboard players set $hits ca.ench_repulsion_lvl 0

execute at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/activate_macro with storage cartographer:custom_enchantments

execute if score $hits ca.ench_repulsion_lvl matches 1.. if entity @s[type=player] run playsound minecraft:entity.breeze.charge player @a[distance=..16] ~ ~ ~ 1 1.25
execute unless entity @s[type=player] run playsound minecraft:entity.breeze.charge hostile @a[distance=..16] ~ ~ ~ 1 1.25

tag @s remove ca.repulsion_owner

execute if score $longer_cdl ca.ench_repulsion_lvl matches 1.. if score $hits ca.ench_repulsion_lvl matches 1.. if entity @s[type=player] run scoreboard players set @s ca.repulsion_cooldown 20
execute if score $longer_cdl ca.ench_repulsion_lvl matches 1.. if score $hits ca.ench_repulsion_lvl matches 1.. if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/repulsion",duration:20,delay:0,parameters:{},merge_behavior:"none"}

execute unless score $longer_cdl ca.ench_repulsion_lvl matches 1.. if score $hits ca.ench_repulsion_lvl matches 1.. if entity @s[type=player] run scoreboard players set @s ca.repulsion_cooldown 11
execute unless score $longer_cdl ca.ench_repulsion_lvl matches 1.. if score $hits ca.ench_repulsion_lvl matches 1.. if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/repulsion",duration:11,delay:0,parameters:{},merge_behavior:"none"}


execute unless entity @s[type=player] run scoreboard players set @s ca.repulsion_cooldown 100
execute unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/repulsion",duration:100,delay:0,parameters:{},merge_behavior:"none"}
