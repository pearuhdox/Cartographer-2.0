execute store result score $aoe_size ca.brittle_var run data get storage cartographer_custom_statuses:brittle data.range 100

scoreboard players operation $aoe_size ca.brittle_var += @s ca.attr_aoe_size_value

scoreboard players operation $aoe_size ca.brittle_var *= @s ca.attr_aoe_size_percent
scoreboard players operation $aoe_size ca.brittle_var /= $100 ca.CONSTANT

execute store result storage cartographer_custom_statuses:brittle data.range double 0.01 run scoreboard players get $aoe_size ca.brittle_var