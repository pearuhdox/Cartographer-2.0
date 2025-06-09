execute if entity @s[type=player] run scoreboard players operation $lvl ca.ench_aberration_lvl = $aberration ca.ench_value
execute unless entity @s[type=player] run scoreboard players operation $lvl ca.ench_aberration_lvl = @s ca.ench_aberration_lvl

execute if score $spawner_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_aberration_lvl = $aberration_hand ca.ench_value
execute if score $summon_cause ca.ench_var matches 1.. run scoreboard players operation $lvl ca.ench_aberration_lvl = $kinship_lvl ca.ench_var

#Change to modify split mechanics

#scoreboard players operation $splits ca.ench_aberration_lvl = $lvl ca.ench_aberration_lvl
#scoreboard players remove $splits ca.ench_aberration_lvl 1
#execute if score $splits ca.ench_aberration_lvl matches 5.. run scoreboard players set $splits ca.ench_aberration_lvl 4
execute if entity @s[type=player] run scoreboard players set $splits ca.ench_aberration_lvl 2
execute unless entity @s[type=player] run scoreboard players operation $splits ca.ench_aberration_lvl = @s ca.ench_aberration_lvl

scoreboard players operation $mult ca.ench_var = $lvl ca.ench_aberration_lvl
#scoreboard players remove $mult ca.ench_var 4
#execute if score $mult ca.ench_var matches ..0 run scoreboard players set $mult ca.ench_var 1

scoreboard players operation $min_result_damage ca.ench_var = $lvl ca.ench_aberration_lvl
#scoreboard players remove $min_result_damage ca.ench_var 4
#execute if score $min_result_damage ca.ench_var matches ..0 run scoreboard players set $min_result_damage ca.ench_var 1

scoreboard players operation $mult ca.ench_var *= $20 ca.CONSTANT

scoreboard players operation $min_result_damage ca.ench_var *= $15 ca.CONSTANT
scoreboard players operation $min_result_damage ca.ench_var *= $10 ca.CONSTANT
function cartographer_custom_enchantments:enchantment/helper/calc_adp_dmg

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $result_damage ca.ench_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $result_damage ca.ench_var /= $100 ca.CONSTANT


execute if score $splits ca.ench_aberration_lvl matches 0 run scoreboard players set $size ca.ench_aberration_lvl 500
execute if score $splits ca.ench_aberration_lvl matches 1 run scoreboard players set $size ca.ench_aberration_lvl 600
execute if score $splits ca.ench_aberration_lvl matches 2 run scoreboard players set $size ca.ench_aberration_lvl 700
execute if score $splits ca.ench_aberration_lvl matches 3 run scoreboard players set $size ca.ench_aberration_lvl 800
execute if score $splits ca.ench_aberration_lvl matches 4 run scoreboard players set $size ca.ench_aberration_lvl 900

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_aberration_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_aberration_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_aberration_lvl /= $100 ca.CONSTANT

scoreboard players operation $half_size ca.ench_aberration_lvl = $size ca.ench_aberration_lvl
scoreboard players operation $size_neg_1 ca.ench_aberration_lvl = $size ca.ench_aberration_lvl

scoreboard players operation $half_size ca.ench_aberration_lvl /= $2 ca.CONSTANT
scoreboard players remove $size_neg_1 ca.ench_aberration_lvl 100

scoreboard players set $health_scale ca.ench_aberration_lvl 3
scoreboard players operation $health_scale ca.ench_aberration_lvl += $splits ca.ench_aberration_lvl

execute store result score $health ca.ench_aberration_lvl run attribute @s max_health get
execute if entity @s[type=player] run scoreboard players operation $health ca.ench_aberration_lvl *= $health_scale ca.ench_aberration_lvl
execute unless entity @s[type=player] run scoreboard players operation $health ca.ench_aberration_lvl /= $2 ca.CONSTANT