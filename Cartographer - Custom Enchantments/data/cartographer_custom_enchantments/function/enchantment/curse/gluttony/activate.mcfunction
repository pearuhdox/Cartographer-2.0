scoreboard players set $duration ca.ench_gluttony_lvl 0
execute if entity @s[tag=ca.used_gluttony_main,tag=!ca.used_gluttony_head,tag=!ca.used_gluttony_body,tag=!ca.used_gluttony_legs,tag=!ca.used_gluttony_feet] run scoreboard players operation $duration ca.ench_gluttony_lvl += @s ca.ench_gluttony_main_lvl
execute if entity @s[tag=ca.used_gluttony_offh,tag=!ca.used_gluttony_head,tag=!ca.used_gluttony_body,tag=!ca.used_gluttony_legs,tag=!ca.used_gluttony_feet] run scoreboard players operation $duration ca.ench_gluttony_lvl += @s ca.ench_gluttony_offh_lvl
execute if entity @s[tag=ca.used_gluttony_feet] run scoreboard players operation $duration ca.ench_gluttony_lvl += @s ca.ench_gluttony_feet_lvl
execute if entity @s[tag=ca.used_gluttony_legs] run scoreboard players operation $duration ca.ench_gluttony_lvl += @s ca.ench_gluttony_legs_lvl
execute if entity @s[tag=ca.used_gluttony_body] run scoreboard players operation $duration ca.ench_gluttony_lvl += @s ca.ench_gluttony_chest_lvl
execute if entity @s[tag=ca.used_gluttony_head] run scoreboard players operation $duration ca.ench_gluttony_lvl += @s ca.ench_gluttony_head_lvl

execute store result storage cartographer:custom_enchantments duration int 1 run scoreboard players get $duration ca.ench_gluttony_lvl

execute if score $duration ca.ench_gluttony_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/curse/gluttony/macro with storage cartographer:custom_enchantments