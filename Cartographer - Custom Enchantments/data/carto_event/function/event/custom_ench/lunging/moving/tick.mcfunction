$execute as $(target) at @s if score @s ca.lunging_cancel matches 1.. run scoreboard players add @s ca.lunging_cancel 1
$execute as $(target) at @s unless block ~ ~-0.1 ~ #cartographer_core:can_raycast unless score @s ca.lunging_cancel matches 1.. run scoreboard players add @s ca.lunging_cancel 1

$execute as $(target) at @s if score @s ca.lunging_cancel matches 4.. run return run function carto_event:event/custom_ench/lunging/moving/end

$execute as $(target) at @s if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/custom_statuses/check_allow_status
$execute as $(target) at @s if score duration= carto_event matches 99 if score $allow_statuses_self ca.ench_lunging_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/custom_statuses/status_self_mob
$execute as $(target) at @s if score duration= carto_event matches 99 if score $allow_statuses_self ca.ench_lunging_lvl matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/custom_statuses/status_self_player

$execute as $(target) at @s store result storage carto_event current[-1].parameters.damage double 0.5 run attribute @s minecraft:attack_damage get
$execute as $(target) at @s if entity @s[type=player] positioned ~-1 ~-0.5 ~-1 as @e[type=#cartographer_core:affected_by_carto,dx=1,dy=2,dz=1] at @s run function carto_event:event/custom_ench/lunging/moving/do_damage with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.is_lunging

$execute as $(target) at @s if entity @s[type=player] run return 1
$execute as $(target) at @s unless entity @s[type=player] if entity @s[nbt={DeathTime:0s}] run return 1

return 0