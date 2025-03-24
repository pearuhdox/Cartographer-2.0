$scoreboard players operation $adjust_div ca.orbit_ct = $(owner) ca.orbit_ct

scoreboard players set $adjust ca.orbit_ct 360
scoreboard players operation $adjust ca.orbit_ct /= $adjust_div ca.orbit_ct

scoreboard players set $adjust_val ca.orbit_ct 0
execute store result storage cartographer:custom_enchantments adjust_rot int 1 run scoreboard players get $adjust ca.orbit_ct

execute on passengers at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/adjust_rotations_branch