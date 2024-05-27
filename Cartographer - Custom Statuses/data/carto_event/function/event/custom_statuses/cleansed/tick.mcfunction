$execute as $(target) at @s unless entity @s[tag=ca.cleansed] run playsound minecraft:entity.player.levelup hostile @a[distance=..12] ~ ~ ~ 0.75 1
$execute as $(target) at @s unless entity @s[tag=ca.cleansed] run playsound minecraft:entity.player.splash.high_speed hostile @a[distance=..12] ~ ~ ~ 0.5 2
$execute as $(target) at @s unless entity @s[tag=ca.cleansed] positioned ~ ~0.2 ~ run function carto_event:event/custom_statuses/cleansed/vfx

$execute as $(target) at @s run tag @s remove ca.cleansed
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.cleansed

$execute as $(target) at @s run function carto_event:event/custom_statuses/cleansed/remove_effects

return 1