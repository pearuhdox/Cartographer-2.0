$execute as $(target) at @s positioned ~ ~1 ~ unless entity @s[type=player] if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.820,0.965,1.000,1.00]} ~ ~ ~ 0.25 0.25 0.25 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ unless entity @s[type=player] if predicate cartographer_core:periodic_tick/4 run particle minecraft:small_gust ~ ~ ~ 0.35 0.35 0.35 0 1 normal

$execute as $(target) at @s if score duration= carto_event matches 2.. run scoreboard players set @s ca.evasion_amount $(amount)
$execute as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_evasion_ench] run function carto_event:event/custom_statuses/evasion/attempt

$execute as $(target) at @s run tag @s remove ca.has_custom_status_evasion_ench
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_evasion_ench
$execute as $(target) at @s if score duration= carto_event matches 21.. if entity @s[type=player] if score @s ca.evasion_chance <= @s ca.evasion_amount run effect give @s resistance 1 9 true
$execute as $(target) at @s if score duration= carto_event matches 21.. if entity @s[type=!player] if score @s ca.evasion_chance <= @s ca.evasion_amount run effect give @s resistance 1 2 true

$execute as $(target) at @s if score duration= carto_event matches 2.. if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_statuses/evasion/attempt

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

return 1