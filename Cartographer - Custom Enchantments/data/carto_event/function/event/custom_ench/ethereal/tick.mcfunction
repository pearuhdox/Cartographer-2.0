$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.etheral_sound_played] if score @s ca.ethereal_time matches 19.. run playsound minecraft:ambient.crimson_forest.mood hostile @a[distance=..16] ~ ~ ~ 2 2
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.etheral_sound_played] run particle dust{color:[1.000,0.549,0.549],scale:2} ~ ~1 ~ 0.25 0.25 0.25 1 8 normal
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.etheral_sound_played] run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 0.75 1.5
$execute as $(target) at @s unless entity @s[type=player] unless entity @s[tag=ca.etheral_sound_played] run tag @s add ca.etheral_sound_played

$execute as $(target) at @s unless entity @s[type=player] if score @s ca.ethereal_time matches 1.. run particle dust{color:[1.000,0.549,0.549],scale:1.5} ~ ~1 ~ 0.25 0.35 0.25 1 3 normal

$execute as $(target) at @s unless entity @s[type=player] if score @s ca.ethereal_time matches 1 run playsound minecraft:entity.bat.takeoff hostile @a[distance=..16] ~ ~ ~ 1 1
$execute as $(target) at @s unless entity @s[type=player] if score @s ca.ethereal_time matches 1 run stopsound @a[distance=..32] hostile minecraft:ambient.crimson_forest.mood
$execute as $(target) at @s unless entity @s[type=player] if score @s ca.ethereal_time matches 1 run particle dust{color:[1.000,0.922,0.922],scale:2} ~ ~1 ~ 0.35 0.35 0.35 1 15 normal
$execute as $(target) at @s unless entity @s[type=player] if score @s ca.ethereal_time matches 1 run tag @s remove ca.etheral_sound_played
$execute as $(target) at @s if score @s ca.ethereal_time matches 1.. run scoreboard players remove @s ca.ethereal_time 1
return 1