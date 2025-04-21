scoreboard players set $damage ca.ench_regret_lvl 0
execute if entity @s[tag=ca.used_regret_main,tag=!ca.used_regret_head,tag=!ca.used_regret_chest,tag=!ca.used_regret_legs,tag=!ca.used_regret_feet] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_regret_main_lvl
execute if entity @s[tag=ca.used_regret_offh,tag=!ca.used_regret_head,tag=!ca.used_regret_chest,tag=!ca.used_regret_legs,tag=!ca.used_regret_feet] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_regret_offh_lvl
execute if entity @s[tag=ca.used_regret_feet] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_regret_feet_lvl
execute if entity @s[tag=ca.used_regret_legs] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_regret_legs_lvl
execute if entity @s[tag=ca.used_regret_body] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_regret_chest_lvl
execute if entity @s[tag=ca.used_regret_head] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_regret_head_lvl

execute store result storage cartographer:custom_enchantments damage int 1 run scoreboard players get $damage ca.ench_regret_lvl

execute if score $damage ca.ench_regret_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/regret/macro with storage cartographer:custom_enchantments