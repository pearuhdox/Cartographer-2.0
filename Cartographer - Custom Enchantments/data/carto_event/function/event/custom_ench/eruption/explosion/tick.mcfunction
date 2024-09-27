$execute as $(target) at @s if entity @s[tag=ca.player_spawned] if entity @s[tag=!ca.spawn_animation] at @s run function carto_event:event/custom_ench/eruption/explosion/warn_vfx_player with storage cartographer:custom_enchantments
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if entity @s[tag=!ca.spawn_animation] at @s run function carto_event:event/custom_ench/eruption/explosion/warn_vfx_enemy with storage cartographer:custom_enchantments

$execute as $(target) at @s if entity @s[tag=ca.player_spawned] at @s run particle dust_color_transition{from_color:[0.969,1.000,0.510],scale:3,to_color:[1.000,0.969,0.851]} ~ ~ ~ 0.25 0.25 0.25 0 3 normal
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] at @s run particle dust_color_transition{from_color:[1.000,0.263,0.212],scale:3,to_color:[1.000,0.871,0.769]} ~ ~ ~ 0.25 0.25 0.25 0 3 normal

$execute as $(target) at @s if score @s ca.eruption_time matches 1.. run scoreboard players remove @s ca.eruption_time 1
$execute as $(target) at @s if score @s ca.eruption_time matches 1 run function carto_event:event/custom_ench/eruption/explosion/explode with storage cartographer:custom_enchantments


return 1