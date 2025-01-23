$execute as $(target) at @s if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 1..15 if entity @s[type=player] run function carto_event:event/custom_ench/ambushing/charge_vfx_player

$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_grounded] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 1 if score @s ca.ench_fleetfoot_lvl matches 1.. unless score @s ca.fleetfoot_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/activate
$execute as $(target) at @s if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5 if score @s ca.ench_repulsion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/channel_activate

#Find targets
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_spawner] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if entity @s[type=player] if predicate cartographer_core:player/looking_at/hostile/24 run scoreboard players set @s ca.ambushing_look 10
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_spawner] unless entity @s[tag=ca.is_ambushing] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if score @s ca.ambushing_look matches 1.. if entity @s[type=player] anchored eyes positioned ^ ^ ^ run function carto_event:event/custom_ench/ambushing/find_target/start

$execute as $(target) at @s if entity @s[tag=ca.ambushing_spawner] unless entity @s[tag=ca.is_ambushing] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if entity @s[type=player] anchored eyes positioned ^ ^ ^ run function carto_event:event/custom_ench/ambushing/find_target/block/start

#Remove Targets if no longer looking
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_spawner] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if score @s ca.ambushing_look matches 1 run data remove storage carto_event current[-1].parameters.victim

$execute as $(target) at @s if entity @s[tag=ca.ambushing_spawner] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if score @s ca.ambushing_look matches 1 run data remove storage carto_event current[-1].parameters.x
$execute as $(target) at @s if entity @s[tag=ca.ambushing_spawner] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if score @s ca.ambushing_look matches 1 run data remove storage carto_event current[-1].parameters.y
$execute as $(target) at @s if entity @s[tag=ca.ambushing_spawner] if entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 5.. if score @s ca.ambushing_look matches 1 run data remove storage carto_event current[-1].parameters.z

#Do warping
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_spawner] unless entity @s[tag=ca.is_ambushing] unless entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 15.. if data storage carto_event current[-1].parameters.victim run function carto_event:event/custom_ench/ambushing/warp_start with storage carto_event current[-1].parameters
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_spawner] unless entity @s[tag=ca.is_ambushing] unless entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 15.. unless data storage carto_event current[-1].parameters.victim run function carto_event:event/custom_ench/ambushing/fizzle with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.ambushing_spawner] unless entity @s[tag=ca.is_ambushing] unless entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 15.. if data storage carto_event current[-1].parameters.x run function carto_event:event/custom_ench/ambushing/warp_start with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @s[tag=ca.ambushing_spawner] unless entity @s[tag=ca.is_ambushing] unless entity @s[tag=ca.ambushing_charging] if score @s ca.ambushing_time matches 15.. unless data storage carto_event current[-1].parameters.x run function carto_event:event/custom_ench/ambushing/fizzle with storage carto_event current[-1].parameters

$execute as $(target) at @s unless entity @s[tag=ca.ambushing_charging] run scoreboard players set @s ca.ambushing_time -10000
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_charging] run scoreboard players set @s ca.ambushing_look 0
$execute as $(target) at @s unless entity @s[tag=ca.ambushing_charging] run scoreboard players set @s ca.channeling_time 0

$execute as $(target) at @s unless entity @s[tag=ca.ambushing_charging] run return 0

$execute as $(target) at @s run tag @s remove ca.ambushing_charging

return 1