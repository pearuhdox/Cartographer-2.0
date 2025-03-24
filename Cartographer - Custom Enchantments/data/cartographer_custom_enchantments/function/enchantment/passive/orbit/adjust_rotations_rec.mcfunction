$rotate @s ~$(adjust_rot) ~

scoreboard players add $adjust_rec ca.orbit_ct 1

execute unless score $adjust_rec ca.orbit_ct > $adjust_val ca.orbit_ct at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/adjust_rotations_rec with storage cartographer:custom_enchantments