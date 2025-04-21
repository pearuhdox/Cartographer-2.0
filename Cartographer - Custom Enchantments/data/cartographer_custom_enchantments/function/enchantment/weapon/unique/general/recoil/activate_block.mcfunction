scoreboard players operation $force ca.ench_var = @s ca.ench_recoil_lvl
scoreboard players operation $force ca.ench_var *= $1000 ca.CONSTANT
scoreboard players add $force ca.ench_var 2500


execute store result score $fall_dist ca.ench_recoil_lvl run data get entity @s fall_distance 100

scoreboard players operation $fall_dist ca.ench_recoil_lvl *= $5 ca.CONSTANT
execute if score $fall_dist ca.ench_recoil_lvl matches 3501.. run scoreboard players set $fall_dist ca.ench_recoil_lvl 3500
scoreboard players operation $force ca.ench_var += $fall_dist ca.ench_recoil_lvl

execute unless score @s ca.recoil_cooldown matches 1.. at @s unless predicate cartographer_core:player/sneaking unless entity @s[tag=ca.has_custom_status_grounded] run playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 0.6 1.25
execute unless score @s ca.recoil_cooldown matches 1.. at @s unless predicate cartographer_core:player/sneaking unless entity @s[tag=ca.has_custom_status_grounded] run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/vfx_start

execute unless score @s ca.recoil_cooldown matches 1.. unless entity @s[tag=ca.has_custom_status_grounded] if score $fall_dist ca.ench_recoil_lvl matches 700.. at @s unless predicate cartographer_core:player/sneaking run tp @s @s

execute unless score @s ca.recoil_cooldown matches 1.. unless entity @s[tag=ca.has_custom_status_grounded] at @s unless predicate cartographer_core:player/sneaking anchored feet positioned ^ ^ ^ facing ^ ^ ^-1 rotated ~ ~-20 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/do_push_player with storage cartographer:custom_enchantments
