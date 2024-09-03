execute store result score $aoe_size_damage ca.evocation_var run data get storage carto_event current[-1].parameters.damage_range 100

scoreboard players operation $aoe_size_damage ca.evocation_var += @s ca.attr_aoe_size_value

scoreboard players operation $aoe_size_damage ca.evocation_var *= @s ca.attr_aoe_size_percent
scoreboard players operation $aoe_size_damage ca.evocation_var /= $100 ca.CONSTANT


execute store result score $aoe_size_grasp ca.evocation_var run data get storage carto_event current[-1].parameters.grasp_range 100

scoreboard players operation $aoe_size_grasp ca.evocation_var += @s ca.attr_aoe_size_value

scoreboard players operation $aoe_size_grasp ca.evocation_var *= @s ca.attr_aoe_size_percent
scoreboard players operation $aoe_size_grasp ca.evocation_var /= $100 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.damage_range double 0.01 run scoreboard players get $aoe_size_damage ca.evocation_var
execute store result storage carto_event current[-1].parameters.grasp_range double 0.01 run scoreboard players get $aoe_size_grasp ca.evocation_var
