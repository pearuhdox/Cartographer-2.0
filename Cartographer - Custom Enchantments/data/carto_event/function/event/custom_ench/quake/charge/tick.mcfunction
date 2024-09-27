$execute as $(target) at @s unless score @s ca.quake_time matches 10.. run particle minecraft:block{block_state:{Name:"$(block)"}} ~ ~0.5 ~ 0.3 0.15 0.3 0.1 4 normal

scoreboard players operation $mod ca.ench_quake_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_quake_lvl %= $2 ca.CONSTANT

$execute as $(target) at @s if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 10.. run function carto_event:event/custom_ench/quake/charge/wave

$execute as $(target) at @s if score $mod ca.ench_quake_lvl matches 1 run scoreboard players add @s ca.quake_time 1

$execute as $(target) at @s if score duration= carto_event matches 1 run kill @s

return 1