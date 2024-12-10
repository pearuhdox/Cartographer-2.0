scoreboard players set $size ca.ench_surge_lvl 400
scoreboard players set $place_pos ca.ench_surge_lvl 200

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_surge_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_surge_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_surge_lvl /= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $place_pos ca.ench_surge_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $place_pos ca.ench_surge_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $place_pos ca.ench_surge_lvl /= $100 ca.CONSTANT

scoreboard players operation $place_pos ca.ench_surge_lvl /= $2 ca.CONSTANT

scoreboard players operation $half_size ca.ench_surge_lvl = $size ca.ench_surge_lvl
scoreboard players operation $size_neg_1 ca.ench_surge_lvl = $size ca.ench_surge_lvl

scoreboard players operation $half_size ca.ench_surge_lvl /= $2 ca.CONSTANT
scoreboard players remove $size_neg_1 ca.ench_surge_lvl 100

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_surge_lvl
execute store result storage cartographer:custom_enchantments vfx_size int 0.1 run scoreboard players get $size ca.ench_surge_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_surge_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_surge_lvl
execute store result storage cartographer:custom_enchantments place_pos double 0.01 run scoreboard players get $place_pos ca.ench_surge_lvl


scoreboard players operation $damage ca.ench_surge_lvl = @s ca.ench_surge_lvl
scoreboard players operation $damage ca.ench_surge_lvl *= $2 ca.CONSTANT
scoreboard players operation $damage ca.ench_surge_lvl *= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_surge_lvl += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_surge_lvl *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_surge_lvl /= $100 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_surge_lvl

scoreboard players set @s ca.raycast 10
execute anchored feet positioned ^ ^ ^ rotated ~ 0 run function cartographer_custom_enchantments:enchantment/passive/surge/ground_rec_release
