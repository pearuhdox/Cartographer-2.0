execute store result score $aoe_damage ca.brittle_var run data get storage cartographer_custom_statuses:brittle data.damage 100

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $aoe_damage ca.brittle_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_status_inflict_damage_value matches -1999999.. run scoreboard players operation $aoe_damage ca.brittle_var += @s ca.attr_status_inflict_damage_value

execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.brittle_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.brittle_var /= $100 ca.CONSTANT

execute if score @s ca.attr_status_inflict_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.brittle_var *= @s ca.attr_status_inflict_damage_percent
execute if score @s ca.attr_status_inflict_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.brittle_var /= $100 ca.CONSTANT

execute store result storage cartographer_custom_statuses:brittle data.damage double 0.01 run scoreboard players get $aoe_damage ca.brittle_var