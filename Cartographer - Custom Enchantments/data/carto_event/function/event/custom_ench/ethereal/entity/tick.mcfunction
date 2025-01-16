$execute as $(pos_x) at @s run scoreboard players set @s ca.entity_purge_var 0
#$execute as $(pos_z) at @s run scoreboard players set @s ca.entity_purge_var 0
$execute as $(neg_x) at @s run scoreboard players set @s ca.entity_purge_var 0
#$execute as $(neg_z) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(pos_x) unless entity @s[tag=ca.animated] positioned as $(target) run tp @s ~ ~ ~ ~ 0
#$execute as $(pos_z) unless entity @s[tag=ca.animated] positioned as $(target) run tp @s ~ ~ ~ ~90 0
$execute as $(neg_x) unless entity @s[tag=ca.animated] positioned as $(target) run tp @s ~ ~ ~ ~180 0
#$execute as $(neg_z) unless entity @s[tag=ca.animated] positioned as $(target) run tp @s ~ ~ ~ ~270 0

#$execute as $(pos_x) run say pos_x
#$execute as $(pos_z) run say pos_z
#$execute as $(neg_x) run say neg_x
#$execute as $(neg_z) run say neg_z

$execute as $(target) if entity @s[tag=ca.etheral_sound_played] as $(pos_x) unless entity @s[tag=ca.animated] at @s run function carto_event:event/custom_ench/ethereal/entity/telegraph_animation
#$execute as $(target) if entity @s[tag=ca.etheral_sound_played] as $(pos_z) unless entity @s[tag=ca.animated] at @s run function carto_event:event/custom_ench/ethereal/entity/telegraph_animation
$execute as $(target) if entity @s[tag=ca.etheral_sound_played] as $(neg_x) unless entity @s[tag=ca.animated] at @s run function carto_event:event/custom_ench/ethereal/entity/telegraph_animation
#$execute as $(target) if entity @s[tag=ca.etheral_sound_played] as $(neg_z) unless entity @s[tag=ca.animated] at @s run function carto_event:event/custom_ench/ethereal/entity/telegraph_animation

$execute as $(pos_x) if entity @s[tag=ca.animated] at @s positioned as $(target) run tp @s ~ ~ ~ ~10 0
#$execute as $(pos_z) if entity @s[tag=ca.animated] at @s positioned as $(target) run tp @s ~ ~ ~ ~10 0
$execute as $(neg_x) if entity @s[tag=ca.animated] at @s positioned as $(target) run tp @s ~ ~ ~ ~10 0
#$execute as $(neg_z) if entity @s[tag=ca.animated] at @s positioned as $(target) run tp @s ~ ~ ~ ~10 0


$execute as $(target) at @s unless entity @s[tag=ca.etheral_sound_played] if score @s ca.ethereal_time matches 19.. run playsound minecraft:ambient.crimson_forest.mood hostile @a[distance=..16] ~ ~ ~ 2 2
#$execute as $(target) at @s unless entity @s[tag=ca.etheral_sound_played] run particle dust{color:[1.000,0.549,0.549],scale:2} ~ ~1 ~ 0.25 0.25 0.25 1 8 normal
$execute as $(target) at @s unless entity @s[tag=ca.etheral_sound_played] run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.75 1.5
$execute as $(target) at @s unless entity @s[tag=ca.etheral_sound_played] run tag @s add ca.etheral_sound_played

#$execute as $(target) at @s if score @s ca.ethereal_time matches 1.. run particle dust{color:[1.000,0.549,0.549],scale:1.5} ~ ~1 ~ 0.25 0.35 0.25 1 3 normal

$execute as $(target) at @s if score @s ca.ethereal_time matches 1 run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 1 1
$execute as $(target) at @s if score @s ca.ethereal_time matches 1 run stopsound @a[distance=..32] hostile minecraft:ambient.crimson_forest.mood
#$execute as $(target) at @s if score @s ca.ethereal_time matches 1 run particle dust{color:[1.000,0.922,0.922],scale:2} ~ ~1 ~ 0.35 0.35 0.35 1 15 normal
$execute as $(target) at @s if score @s ca.ethereal_time matches 1 run tag @s remove ca.etheral_sound_played
$execute as $(target) at @s if score @s ca.ethereal_time matches 1.. run scoreboard players remove @s ca.ethereal_time 1


$execute as $(pos_x) at @s if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1
#$execute as $(pos_z) at @s if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(neg_x) at @s if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1
#$execute as $(neg_z) at @s if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1

$execute as $(pos_x) at @s if score duration= carto_event matches 1 run kill @s
#$execute as $(pos_z) at @s if score duration= carto_event matches 1 run kill @s
$execute as $(neg_x) at @s if score duration= carto_event matches 1 run kill @s
#$execute as $(neg_z) at @s if score duration= carto_event matches 1 run kill @s
return 1