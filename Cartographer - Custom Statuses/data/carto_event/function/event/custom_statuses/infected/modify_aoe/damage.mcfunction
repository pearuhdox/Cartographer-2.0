execute store result score $aoe_damage ca.infect_var run data get storage carto_event current[-1].parameters.death_damage 100

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $aoe_damage ca.infect_var += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_status_inflict_damage_value matches -1999999.. run scoreboard players operation $aoe_damage ca.infect_var += @s ca.attr_status_inflict_damage_value

execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.infect_var *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.infect_var /= $100 ca.CONSTANT

execute if score @s ca.attr_status_inflict_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.infect_var *= @s ca.attr_status_inflict_damage_percent
execute if score @s ca.attr_status_inflict_damage_percent matches -1999999.. run scoreboard players operation $aoe_damage ca.infect_var /= $100 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.death_damage double 0.01 run scoreboard players get $aoe_damage ca.infect_var