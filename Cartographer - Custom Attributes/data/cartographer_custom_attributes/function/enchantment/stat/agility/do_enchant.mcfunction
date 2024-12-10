attribute @s minecraft:jump_strength modifier remove ca.agility_stat
attribute @s minecraft:safe_fall_distance modifier remove ca.agility_stat
scoreboard players operation $value ca.stat_var = @s ca.ench_agility_lvl
#execute if score $value ca.stat_var matches 4.. run scoreboard players set $value ca.stat_var 3

scoreboard players set $amount ca.stat_var 0
scoreboard players operation $amount ca.stat_var = $value ca.stat_var
scoreboard players operation $amount ca.stat_var *= $10 ca.CONSTANT

scoreboard players add $amount ca.stat_var 10

#scoreboard players set $amount ca.stat_var 0
#execute if score $value ca.stat_var matches 1 run scoreboard players set $amount ca.stat_var 20
#execute if score $value ca.stat_var matches 2 run scoreboard players set $amount ca.stat_var 30
#execute if score $value ca.stat_var matches 3 run scoreboard players set $amount ca.stat_var 40

execute store result storage cartographer_custom_attributes:macro value int 1 run scoreboard players get $value ca.stat_var
execute store result storage cartographer_custom_attributes:macro amount double 0.01 run scoreboard players get $amount ca.stat_var
function cartographer_custom_attributes:enchantment/stat/agility/macro with storage cartographer_custom_attributes:macro