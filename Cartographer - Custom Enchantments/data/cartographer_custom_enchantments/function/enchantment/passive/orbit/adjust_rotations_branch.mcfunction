rotate @s 0 0

scoreboard players set $adjust_rec ca.orbit_ct 0

scoreboard players add @s ca.orbit_time 60
execute if entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.orbit_cdl 5
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set @s ca.orbit_cdl 40

execute at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/adjust_rotations_rec with storage cartographer:custom_enchantments

scoreboard players add $adjust_val ca.orbit_ct 1