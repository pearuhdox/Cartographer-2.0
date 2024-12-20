$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass

playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 0.4 1.5
particle minecraft:gust ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation $strength player_motion.api.launch = $force ca.ench_var

execute as @s at @s facing entity @n[tag=ca.repulsion_owner] feet facing ^ ^ ^-1 rotated ~ -30 run function player_motion:api/launch_looking


function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_repulsion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_repulsion_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/custom_statuses/status_self_mob
