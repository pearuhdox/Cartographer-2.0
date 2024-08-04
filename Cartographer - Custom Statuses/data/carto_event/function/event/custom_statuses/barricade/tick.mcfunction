$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.749,0.851,0.816,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ unless entity @s[type=player] if predicate cartographer_core:periodic_tick/4 run particle minecraft:infested ~ ~ ~ 0.35 0.35 0.35 0 1 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. if entity @s[type=player] unless entity @s[tag=ca.has_custom_status_barricade] run playsound minecraft:item.shield.block player @a[distance=..16] ~ ~ ~ 0.65 1.5

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_barricade] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 0.65 1.5
$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_barricade] positioned ~ ~1 ~ run particle dust{color:[0.749,0.851,0.816],scale:2} ~ ~ ~ 0.25 0.25 0.25 1 10 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_barricade] run scoreboard players set @s ca.barricade_shields $(shields)

$execute as $(target) at @s if score @s ca.barricade_shields matches $(cap).. run scoreboard players set @s ca.barricade_shields $(cap)

scoreboard players set $remove_barricade ca.status_var 0

$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_barricade
$execute as $(target) at @s if entity @s[type=player] if score duration= carto_event matches 2.. run effect give @s resistance 1 9 true
$execute as $(target) at @s unless entity @s[type=player] if score duration= carto_event matches 2.. run effect give @s resistance 1 2 true

$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_nullify] unless entity @s[tag=ca.has_custom_status_nullify_ench] if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/barricade/remove_shield
$execute as $(target) at @s if score duration= carto_event matches 2.. if entity @s[tag=ca.has_custom_status_nullify] if score @s ca.nullify_cooldown matches 1.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/barricade/remove_shield
$execute as $(target) at @s if score duration= carto_event matches 2.. if entity @s[tag=ca.has_custom_status_nullify_ench] if score @s ca.nullify_cooldown matches 1.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/barricade/remove_shield

$execute if score duration= carto_event matches 1 as $(target) at @s run function carto_event:event/custom_statuses/barricade/remove
$execute as $(target) at @s if score duration= carto_event matches 2.. if score @s ca.barricade_shields matches ..0 run function carto_event:event/custom_statuses/barricade/remove

$execute as $(target) at @s if score duration= carto_event matches 1 run playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 0.5 1.5

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.purged] run function carto_event:event/custom_statuses/barricade/remove
execute if score $remove_barricade ca.status_var matches 1.. run return 0
return 1