$execute as $(target) at @s run scoreboard players add @s ca.soulfire_animation 1
$execute as $(target) at @s unless score @s ca.soulfire_animation matches 21.. run function carto_event:event/custom_ench/soulfire/flames/vfx
$execute as $(target) at @s if score @s ca.soulfire_animation matches 21.. run function carto_event:event/custom_ench/soulfire/flames/vfx_waiting

scoreboard players operation $mod ca.ench_soulfire_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_soulfire_lvl %= $3 ca.CONSTANT

$execute as $(target) at @s if score @s ca.soulfire_time matches 1.. run scoreboard players remove @s ca.soulfire_time 1
$execute as $(target) at @s if score @s ca.soulfire_time matches ..0 if score $mod ca.ench_soulfire_lvl matches 0 run function carto_event:event/custom_ench/soulfire/flames/fire with storage cartographer:custom_enchantments

$execute as $(target) at @s run return 1
return 0