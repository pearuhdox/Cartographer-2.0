scoreboard players set $muted_damage ca.ench_eruption_lvl 0

execute store result score @s ca.raycast run data get storage carto_event current[-1].parameters.size 100
scoreboard players operation @s ca.raycast /= $10 ca.CONSTANT

execute if score @s ca.raycast matches 1.. facing entity @s feet positioned ^ ^ ^0.1 run function carto_event:event/custom_ench/eruption/explosion/damage_player_raycast