scoreboard players remove $levels ca.ench_shrapnel_lvl 1

scoreboard players operation @s ca.raycast = $path_dist ca.ench_shrapnel_lvl
execute positioned ^ ^ ^-0.5 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/path_raycast

execute if score $levels ca.ench_shrapnel_lvl matches 1.. rotated ~15 0 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/repeat_paths_pos