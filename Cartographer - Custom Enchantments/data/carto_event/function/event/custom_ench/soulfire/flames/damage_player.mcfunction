scoreboard players set $muted_damage ca.ench_soulfire_lvl 0

execute store result score @s ca.raycast run data get storage carto_event current[-1].parameters.length 10


execute if score @s ca.raycast matches 1.. facing entity @s eyes positioned ^ ^ ^0.1 run function carto_event:event/custom_ench/soulfire/flames/damage_player_raycast