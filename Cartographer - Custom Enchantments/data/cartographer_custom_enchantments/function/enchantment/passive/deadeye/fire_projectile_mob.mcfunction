scoreboard players operation $damage_arrow ca.ench_deadeye_lvl = @s ca.ench_deadeye_lvl
scoreboard players operation $damage_arrow ca.ench_deadeye_lvl *= $125 ca.CONSTANT
execute store result storage cartographer:custom_enchantments arrow_damage double 0.01 run scoreboard players get $damage_arrow ca.ench_deadeye_lvl

execute positioned ^ ^ ^0.5 facing ^ ^ ^1 summon arrow run function cartographer_custom_enchantments:enchantment/passive/deadeye/fire_projectile_branch

execute as @p at @s run function cartographer_custom_enchantments:enchantment/passive/deadeye/block_entity

scoreboard players set $hit ca.ench_deadeye_lvl 1