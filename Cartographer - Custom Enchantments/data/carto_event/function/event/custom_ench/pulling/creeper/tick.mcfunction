$execute if score duration= carto_event matches 61 as $(target) at @s store result score @s ca.pulling_fuse run data get entity @s Fuse
$execute if score duration= carto_event matches 61 as $(target) at @s store result entity @s Fuse int 1 run scoreboard players add @s ca.pulling_fuse 60
$execute if score duration= carto_event matches 61 as $(target) at @s if entity @s[tag=ca.end_pulling_fuse] run tag @s remove ca.end_pulling_fuse
$execute if score duration= carto_event matches 61 as $(target) at @s run tag @s add ca.pulling_delay_fuse

$execute if score duration= carto_event matches 2.. as $(target) at @s on target run tag @s add ca.pulling_creeper_target
$execute if score duration= carto_event matches 2.. as $(target) at @s unless entity @a[distance=..7.5,tag=ca.pulling_creeper_target] run tag @s add ca.end_pulling_fuse
$execute if score duration= carto_event matches 2.. as $(target) at @s on target run tag @s remove ca.pulling_creeper_target

$execute if score duration= carto_event matches 1 as $(target) at @s run tag @s add ca.end_pulling_fuse

$execute if score duration= carto_event matches 1.. as $(target) at @s if entity @s[tag=ca.end_pulling_fuse] store result entity @s Fuse int 1 run scoreboard players remove @s ca.pulling_fuse 60
$execute if score duration= carto_event matches 1.. as $(target) at @s if entity @s[tag=ca.end_pulling_fuse] run tag @s remove ca.pulling_delay_fuse
$execute if score duration= carto_event matches 1.. as $(target) at @s if entity @s[tag=ca.end_pulling_fuse] run return 0


$execute as $(target) at @s run return 1
return 0