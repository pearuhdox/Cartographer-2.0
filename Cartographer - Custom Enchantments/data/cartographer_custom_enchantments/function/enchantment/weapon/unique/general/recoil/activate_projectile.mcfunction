scoreboard players operation $force ca.ench_var = @s ca.ench_recoil_lvl
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $1000 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players add $force ca.ench_var 2500
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players add $force ca.ench_var 2

execute store result score $fall_dist ca.ench_recoil_lvl run data get entity @s fall_distance 100

execute if entity @s[type=player] run scoreboard players operation $fall_dist ca.ench_recoil_lvl *= $5 ca.CONSTANT
execute if entity @s[type=player] if score $fall_dist ca.ench_recoil_lvl matches 3501.. run scoreboard players set $fall_dist ca.ench_recoil_lvl 3500
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var += $fall_dist ca.ench_recoil_lvl

execute unless entity @s[type=player] run scoreboard players operation $fall_dist ca.ench_recoil_lvl /= $200 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var += $fall_dist ca.ench_recoil_lvl

execute unless predicate cartographer_core:player/sneaking unless entity @s[tag=ca.has_custom_status_grounded] if score $fall_dist ca.ench_recoil_lvl matches 700.. at @s run tp @s @s

execute unless score @s ca.recoil_cooldown matches 1.. unless entity @s[tag=ca.has_custom_status_grounded] if entity @s[type=player] unless predicate cartographer_core:player/sneaking at @s anchored feet positioned ^ ^ ^ facing ^ ^ ^-1 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/do_push_player with storage cartographer:custom_enchantments
execute unless score @s ca.recoil_cooldown matches 1.. unless entity @s[tag=ca.has_custom_status_grounded] unless entity @s[type=player] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/do_push_mob with storage cartographer:custom_enchantments
