execute store result score $aoe_size ca.shock_var run data get storage carto_event current[-1].parameters.range 100

scoreboard players operation $aoe_size ca.shock_var += @s ca.attr_aoe_size_value

scoreboard players operation $aoe_size ca.shock_var *= @s ca.attr_aoe_size_percent
scoreboard players operation $aoe_size ca.shock_var /= $100 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.range double 0.01 run scoreboard players get $aoe_size ca.shock_var