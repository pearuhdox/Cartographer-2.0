tag @s add ca.shrapnel_owner

scoreboard players operation @s ca.raycast = $path_dist ca.ench_shrapnel_lvl
execute positioned ~ ~ ~ facing entity @s feet rotated ~ 0 positioned ^ ^ ^-0.5 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/path_raycast


scoreboard players operation $levels ca.ench_shrapnel_lvl = @s ca.ench_shrapnel_lvl
execute positioned ~ ~ ~ facing entity @s feet rotated ~15 0 if score $levels ca.ench_shrapnel_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/repeat_paths_pos

scoreboard players operation $levels ca.ench_shrapnel_lvl = @s ca.ench_shrapnel_lvl
execute positioned ~ ~ ~ facing entity @s feet rotated ~-15 0 if score $levels ca.ench_shrapnel_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/repeat_paths_neg

tag @s remove ca.shrapnel_owner