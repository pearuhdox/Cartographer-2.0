$execute as $(target) at @s unless entity @s[tag=ca.purged] run playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..12] ~ ~ ~ 0.25 2
$execute as $(target) at @s unless entity @s[tag=ca.purged] run playsound minecraft:entity.player.splash.high_speed hostile @a[distance=..12] ~ ~ ~ 0.25 2
$execute as $(target) at @s unless entity @s[tag=ca.purged] positioned ~ ~0.2 ~ run function carto_event:event/custom_statuses/purged/vfx

$execute as $(target) at @s run tag @s remove ca.purged
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.purged

$execute as $(target) at @s run function carto_event:event/custom_statuses/purged/remove_effects

return 1