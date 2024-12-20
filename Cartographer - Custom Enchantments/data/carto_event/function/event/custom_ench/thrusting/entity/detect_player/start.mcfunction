execute store result score @s ca.raycast run data get storage carto_event current[-1].parameters.size 2

scoreboard players add @s ca.raycast 2

execute positioned ^ ^0.5 ^-0.5 run function carto_event:event/custom_ench/thrusting/entity/detect_player/recurse

execute as @a[distance=..32,tag=ca.thrusting_hit] at @s run tag @s add ca.indicator_warning
execute as @a[distance=..32,tag=ca.thrusting_hit] at @s run scoreboard players set @s ca.warning_time 5

tag @a remove ca.thrusting_hit