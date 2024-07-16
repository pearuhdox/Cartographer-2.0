$execute as $(target) at @s unless entity @s[tag=ca.unstoppable] run playsound minecraft:entity.ravager.roar hostile @a[distance=..16] ~ ~ ~ 0.5 2
$execute as $(target) at @s unless entity @s[tag=ca.unstoppable] positioned ~ ~ ~ run function carto_event:event/custom_statuses/unstoppable/vfx

$execute as $(target) at @s run particle minecraft:crimson_spore ~ ~1 ~ 0.2 0.3 0.2 0.001 2 normal

$execute as $(target) at @s run tag @s remove ca.unstoppable
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.unstoppable

$execute as $(target) at @s run function carto_event:event/custom_statuses/unstoppable/remove_effects

return 1