scoreboard players operation $mult ca.ench_var = $explosive ca.ench_value
scoreboard players operation $mult ca.ench_var *= $10 ca.CONSTANT
scoreboard players set $min_result_damage ca.ench_var 200
execute on attacker run function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

scoreboard players operation $range ca.ench_var = $explosive ca.ench_value
scoreboard players operation $range ca.ench_var *= $20 ca.CONSTANT
scoreboard players add $range ca.ench_var 160

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $result_damage ca.ench_var += @s ca.attr_aoe_damage_value

execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT


execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $range ca.ench_var += @s ca.attr_aoe_size_value

execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $range ca.ench_var /= $100 ca.CONSTANT


execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var
execute store result storage cartographer:custom_enchantments range double 0.01 run scoreboard players get $range ca.ench_var


execute on attacker run tag @s add ca.explosive_owner

execute at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/macro with storage cartographer:custom_enchantments

execute on attacker run tag @s remove ca.explosive_owner
