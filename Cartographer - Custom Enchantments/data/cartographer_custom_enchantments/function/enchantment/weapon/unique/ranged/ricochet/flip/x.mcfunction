scoreboard players set $side_reflect ca.ench_ricochet_lvl 1
#execute as @s at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 20 normal

execute store result score $swap ca.ench_ricochet_lvl run data get storage cartographer_custom_enchantments:ricochet Motion[0] 1000
scoreboard players operation $swap ca.ench_ricochet_lvl *= $-1 ca.CONSTANT
execute store result storage cartographer_custom_enchantments:ricochet Motion[0] double 0.001 run scoreboard players get $swap ca.ench_ricochet_lvl

#tellraw @p {"score":{"name":"$swap","objective":"ca.ench_ricochet_lvl"}}

scoreboard players remove @s ca.ench_ricochet_lvl 1

execute if entity @s[tag=ca.allow_flip] if score $x_mot ca.ench_ricochet_lvl matches 1.. align x positioned ~-0.25 ~ ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/do_move
execute if entity @s[tag=ca.allow_flip] unless score $x_mot ca.ench_ricochet_lvl matches 1.. align x positioned ~1.25 ~ ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/flip/do_move