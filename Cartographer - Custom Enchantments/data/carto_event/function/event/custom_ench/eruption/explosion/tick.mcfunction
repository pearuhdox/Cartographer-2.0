$execute as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0
$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score @s ca.eruption_dmg matches 1.. run function carto_event:event/custom_ench/eruption/explosion/transfer_damage

$execute as $(target) at @s if entity @s[tag=ca.player_spawned] if entity @s[tag=!ca.spawn_animation] at @s run function carto_event:event/custom_ench/eruption/explosion/warn_vfx_player with storage cartographer:custom_enchantments
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if entity @s[tag=!ca.spawn_animation] at @s run function carto_event:event/custom_ench/eruption/explosion/warn_vfx_enemy with storage cartographer:custom_enchantments

$execute as $(target) at @s if score duration= carto_event matches 599 run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

$execute as $(telegraph) at @s if score duration= carto_event matches 599 run function carto_event:event/custom_ench/eruption/explosion/telegraph_animation
$execute as $(telegraph) at @s if score duration= carto_event matches ..596 run tp @s ~ ~ ~ ~2 ~
$execute as $(target) at @s if score duration= carto_event matches ..595 run tp @s ~ ~ ~ ~10 ~

$execute as $(target) at @s if entity @s[tag=ca.player_spawned] at @s run particle dust_color_transition{from_color:[0.969,1.000,0.510],scale:2,to_color:[1.000,0.969,0.851]} ~ ~ ~ 0.2 0.2 0.2 0 1 normal
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] at @s run particle dust_color_transition{from_color:[1.000,0.263,0.212],scale:2,to_color:[1.000,0.871,0.769]} ~ ~ ~ 0.2 0.2 0.2 0 1 normal

$execute as $(target) at @s if score @s ca.eruption_time matches 1.. run scoreboard players remove @s ca.eruption_time 1
$execute as $(target) at @s if score @s ca.eruption_time matches 1 run kill $(telegraph)
$execute as $(target) at @s if score @s ca.eruption_time matches 1 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) at @s if score @s ca.eruption_time matches 1 run function carto_event:event/custom_ench/eruption/explosion/explode with storage cartographer:custom_enchantments

$execute as $(target) at @s run return 1
return 0