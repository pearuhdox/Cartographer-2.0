$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass

playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 0.4 1.5
particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation $strength player_motion.api.launch = $force ca.ench_var

execute as @s at @s facing entity @n[tag=ca.repulsion_owner] feet facing ^ ^ ^-1 rotated ~ -30 run function player_motion:api/launch_looking