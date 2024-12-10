scoreboard players set $damage ca.ench_regret_lvl 0
execute if entity @s[tag=ca.used_regret_main,tag=!ca.used_regret_head,tag=!ca.used_regret_body,tag=!ca.used_regret_legs,tag=!ca.used_regret_feet] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_main_regret_lvl
execute if entity @s[tag=ca.used_regret_offh,tag=!ca.used_regret_head,tag=!ca.used_regret_body,tag=!ca.used_regret_legs,tag=!ca.used_regret_feet] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_offh_regret_lvl
execute if entity @s[tag=ca.used_regret_feet] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_feet_regret_lvl
execute if entity @s[tag=ca.used_regret_legs] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_legs_regret_lvl
execute if entity @s[tag=ca.used_regret_body] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_body_regret_lvl
execute if entity @s[tag=ca.used_regret_head] run scoreboard players operation $damage ca.ench_regret_lvl += @s ca.ench_head_regret_lvl

execute store result storage cartographer:custom_enchantments damage int 1 run scoreboard players get $damage ca.ench_regret_lvl

execute if score $damage ca.ench_regret_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/regret/macro with storage cartographer:custom_enchantments