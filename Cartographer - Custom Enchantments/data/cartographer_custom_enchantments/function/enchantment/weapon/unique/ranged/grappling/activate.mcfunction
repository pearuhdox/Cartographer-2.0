scoreboard players operation $force ca.ench_var = $grappling ca.ench_value
$execute as $(owner) at @s if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $1000 ca.CONSTANT
$execute as $(owner) at @s if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
$execute as $(owner) at @s if entity @s[type=player] run scoreboard players add $force ca.ench_var 2500
$execute as $(owner) at @s unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
$execute as $(owner) at @s unless entity @s[type=player] run scoreboard players add $force ca.ench_var 2

scoreboard players set $type ca.ench_grappling_lvl 0
$execute as $(owner) at @s if entity @s[type=player] unless score @s ca.grappling_cooldown matches 1.. unless predicate cartographer_core:player/sneaking run scoreboard players set $type ca.ench_grappling_lvl 1
$execute as $(owner) at @s unless entity @s[type=player] unless score @s ca.grappling_cooldown matches 1.. run scoreboard players set $type ca.ench_grappling_lvl 2

execute unless entity @s[tag=ca.has_custom_status_grounded] if score $type ca.ench_grappling_lvl matches 1 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/do_push_player with storage cartographer:custom_enchantments
execute unless entity @s[tag=ca.has_custom_status_grounded] if score $type ca.ench_grappling_lvl matches 2 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/do_push_mob with storage cartographer:custom_enchantments