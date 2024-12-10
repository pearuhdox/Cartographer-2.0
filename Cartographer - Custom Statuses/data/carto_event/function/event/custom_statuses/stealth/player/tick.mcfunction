
$execute as $(target) at @s unless entity @s[tag=ca.has_custom_status_stealth_player] run function carto_event:event/custom_statuses/stealth/player/start with storage carto_event current[-1].parameters

$execute as $(target) at @s run tag @s remove ca.has_custom_status_stealth_player
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_stealth_player

scoreboard players set $end_stealth ca.status_var 0

$execute as $(target) at @s if score duration= carto_event matches 2.. as @e[type=#cartographer_core:affected_by_carto,tag=!ca.stealth_mob_blindness_attr,distance=$(visible_range)..36] at @s run function carto_event:event/custom_statuses/stealth/player/mob with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.remove_stealth_player] run function carto_event:event/custom_statuses/stealth/player/end
$execute as $(target) at @s if entity @s[nbt=!{HurtTime:0s}] run function carto_event:event/custom_statuses/stealth/player/end
$execute as $(target) at @s if score duration= carto_event matches 1 run function carto_event:event/custom_statuses/stealth/player/end

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.purged] run function carto_event:event/custom_statuses/stealth/player/end
execute if score $end_stealth ca.status_var matches 1.. run return 0
return 1