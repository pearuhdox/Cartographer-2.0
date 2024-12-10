execute if entity @s[type=player] run scoreboard players set $length ca.ench_deadeye_lvl 1200
execute unless entity @s[type=player] run scoreboard players set $length ca.ench_deadeye_lvl 1600

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $length ca.ench_deadeye_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $length ca.ench_deadeye_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $length ca.ench_deadeye_lvl /= $100 ca.CONSTANT

execute store result storage cartographer:custom_enchantments length double 0.01 run scoreboard players get $length ca.ench_deadeye_lvl
scoreboard players operation $length ca.ench_deadeye_lvl *= $2 ca.CONSTANT
execute store result storage cartographer:custom_enchantments raycast int 0.01 run scoreboard players get $length ca.ench_deadeye_lvl

scoreboard players operation $damage ca.ench_deadeye_lvl = @s ca.ench_deadeye_lvl
scoreboard players operation $damage ca.ench_deadeye_lvl *= $2 ca.CONSTANT
scoreboard players operation $damage ca.ench_deadeye_lvl *= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_deadeye_lvl += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_deadeye_lvl *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_deadeye_lvl /= $100 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_deadeye_lvl

data modify storage cartographer:custom_enchantments owner_uuid set value []
data modify storage cartographer:custom_enchantments owner_uuid set from entity @s

scoreboard players set $attempts ca.ench_deadeye_lvl 3
execute anchored eyes positioned ^ ^ ^ rotated ~ 0 run function cartographer_custom_enchantments:enchantment/passive/deadeye/fire_start with storage cartographer:custom_enchantments

scoreboard players remove @s ca.sprint_time_deadeye 10