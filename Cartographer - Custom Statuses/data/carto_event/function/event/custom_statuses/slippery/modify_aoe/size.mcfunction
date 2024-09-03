execute store result score $aoe_size ca.slippery_val run data get storage carto_event current[-1].parameters.crash_range 100

scoreboard players operation $aoe_size ca.slippery_val += @s ca.attr_aoe_size_value

scoreboard players operation $aoe_size ca.slippery_val *= @s ca.attr_aoe_size_percent
scoreboard players operation $aoe_size ca.slippery_val /= $100 ca.CONSTANT

execute store result storage carto_event current[-1].parameters.crash_range double 0.01 run scoreboard players get $aoe_size ca.slippery_val