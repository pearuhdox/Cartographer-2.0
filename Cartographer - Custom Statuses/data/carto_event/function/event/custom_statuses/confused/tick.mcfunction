$execute as $(target) at @s if entity @s[tag=ca.block_confusion] run return 0

$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.710,0.263,0.820,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 0 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_confused
$execute as $(target) at @s if score duration= carto_event matches 15.. run tag @s add ca.has_custom_status_confused

scoreboard players set $confused_target_player ca.status_var 0
$execute if score duration= carto_event matches 15.. as $(target) at @s on target if entity @s[type=player] run scoreboard players set $confused_target_player ca.status_var 1

$execute if score duration= carto_event matches 15.. as $(target) at @s on target if entity @s[type=player] unless entity @e[type=#bb:hostile,distance=0.25..$(range),tag=!ca.has_custom_status_confused] run scoreboard players set $confused_target_player ca.status_var 2


$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 1 as $(target) at @s run scoreboard players set @s ca.confused_reassign 5

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 4.. run attribute @s minecraft:generic.follow_range modifier add ca.confused_follow_range_force_off -1.0 add_multiplied_total
$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 3 run attribute @s minecraft:generic.follow_range modifier remove ca.confused_follow_range_force_off

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 3 if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 run damage @s $(damage) cartographer_custom_statuses:status_damage by @e[type=#bb:hostile,sort=nearest,limit=1,distance=0.25..$(range),tag=!ca.has_custom_status_confused]
$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 1.. run scoreboard players remove @s ca.confused_reassign 1

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:generic.movement_speed modifier remove ca.confused_speed
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s run attribute @s minecraft:generic.movement_speed modifier add ca.confused_speed $(speed_bonus) add_multiplied_total

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:generic.knockback_resistance modifier remove ca.confused_kbr
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s run attribute @s minecraft:generic.knockback_resistance modifier add ca.confused_kbr $(kbr_bonus) add_value

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:generic.attack_knockback modifier remove ca.confused_kb
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s run attribute @s minecraft:generic.attack_knockback modifier add ca.confused_kb $(kb_bonus) add_value

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:generic.attack_damage modifier remove ca.confused_atk
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s run attribute @s minecraft:generic.attack_damage modifier add ca.confused_atk $(attack_bonus) add_value

$execute if score duration= carto_event matches 14 as $(target) at @s if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 14 as $(target) at @s run scoreboard players set @s ca.confused_reassign 0

$execute if score duration= carto_event matches 14 as $(target) at @s on target unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_statuses/blindness",duration:5,delay:002,parameters:{amount:1.0},merge_behavior:"custom"}

$execute if score duration= carto_event matches 14 as $(target) at @s run attribute @s minecraft:generic.follow_range modifier add ca.confused_follow_range_force_off -1.0 add_multiplied_total
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:generic.follow_range modifier remove ca.confused_follow_range_force_off

$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:generic.follow_range modifier remove ca.confused_follow_range_force_off
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:generic.knockback_resistance modifier remove ca.confused_kbr
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:generic.attack_knockback modifier remove ca.confused_kb
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:generic.movement_speed modifier remove ca.confused_speed
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:generic.attack_damage modifier remove ca.confused_atk

$execute if score duration= carto_event matches 1 as $(target) at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/confused",duration:$(block_duration),delay:003,parameters:{},merge_behavior:"none"}

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_confused
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_confused
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1