scoreboard players operation $warn ca.ench_ambushing_lvl *= $2 ca.CONSTANT
scoreboard players operation $warn ca.ench_ambushing_lvl *= $2 ca.CONSTANT
scoreboard players operation @s ca.raycast = $warn ca.ench_ambushing_lvl

scoreboard players add @s ca.raycast 1

execute positioned ^ ^0.5 ^-0.5 run function carto_event:event/custom_ench/ambushing/entity_use/detect_player/recurse

execute as @a[distance=..32,tag=ca.ambushing_warn] at @s run tag @s add ca.indicator_warning
execute as @a[distance=..32,tag=ca.ambushing_warn] at @s run scoreboard players set @s ca.warning_time 3

tag @a remove ca.ambushing_warn