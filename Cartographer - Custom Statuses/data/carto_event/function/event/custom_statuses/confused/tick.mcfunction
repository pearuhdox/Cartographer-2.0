$execute as $(target) at @s if entity @s[tag=ca.block_confusion] run return 0

$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.710,0.263,0.820,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 0 normal

$execute as $(target) at @s run tag @s remove ca.has_custom_status_confused
$execute as $(target) at @s if score duration= carto_event matches 15.. run tag @s add ca.has_custom_status_confused

scoreboard players set $confused_target_player ca.status_var 0
$execute if score duration= carto_event matches 15.. as $(target) at @s unless score @s ca.confused_cdl matches 1.. on target if entity @s[type=player] run scoreboard players set $confused_target_player ca.status_var 1
$execute if score duration= carto_event matches 15.. as $(target) at @s unless score @s ca.confused_cdl matches 1.. on target if entity @s[type=player] unless entity @e[type=#cartographer_core:affected_by_carto,distance=0.25..$(range),tag=!ca.has_custom_status_confused] run scoreboard players set $confused_target_player ca.status_var 2

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_cdl matches 1.. run scoreboard players remove @s ca.confused_cdl 1


$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 1 as $(target) at @s run scoreboard players set @s ca.confused_reassign 5

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 4.. run attribute @s minecraft:follow_range modifier add ca.confused_follow_range_force_off -1.0 add_multiplied_total
$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 3 run attribute @s minecraft:follow_range modifier remove ca.confused_follow_range_force_off

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 3 if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 run function carto_event:event/custom_statuses/confused/reassign with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 run scoreboard players add @s ca.confused_buffer $(damage)
$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 if score @s ca.confused_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#ad40ec",buffer_name:"confused"}

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 anchored eyes positioned ^ ^0.2 ^ run function carto_event:event/custom_statuses/confused/vfx
$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 anchored eyes positioned ^ ^0.2 ^ run function carto_event:event/custom_statuses/confused/vfx
$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 2 anchored eyes positioned ^ ^0.2 ^ run function carto_event:event/custom_statuses/confused/vfx

$execute if score duration= carto_event matches 15.. as $(target) at @s if score @s ca.confused_reassign matches 1.. run scoreboard players remove @s ca.confused_reassign 1

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:movement_speed modifier remove ca.confused_speed
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s unless score @s ca.confused_cdl matches 1.. run attribute @s minecraft:movement_speed modifier add ca.confused_speed $(speed_bonus) add_multiplied_total

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:knockback_resistance modifier remove ca.confused_kbr
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s unless score @s ca.confused_cdl matches 1.. run attribute @s minecraft:knockback_resistance modifier add ca.confused_kbr $(kbr_bonus) add_value

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:attack_knockback modifier remove ca.confused_kb
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s unless score @s ca.confused_cdl matches 1.. run attribute @s minecraft:attack_knockback modifier add ca.confused_kb $(kb_bonus) add_value

$execute if score duration= carto_event matches 15.. as $(target) at @s run attribute @s minecraft:attack_damage modifier remove ca.confused_atk
$execute if score duration= carto_event matches 15.. if score $confused_target_player ca.status_var matches 0 as $(target) at @s unless score @s ca.confused_cdl matches 1.. run attribute @s minecraft:attack_damage modifier add ca.confused_atk $(attack_bonus) add_value

$execute if score duration= carto_event matches 14 as $(target) at @s if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 14 as $(target) at @s run scoreboard players set @s ca.confused_reassign 0

$execute if score duration= carto_event matches 14 as $(target) at @s on target unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_statuses/blindness",duration:5,delay:2,parameters:{amount:1.0},merge_behavior:"custom"}

$execute if score duration= carto_event matches 14 as $(target) at @s run attribute @s minecraft:follow_range modifier add ca.confused_follow_range_force_off -1.0 add_multiplied_total
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:follow_range modifier remove ca.confused_follow_range_force_off

$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:follow_range modifier remove ca.confused_follow_range_force_off
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:knockback_resistance modifier remove ca.confused_kbr
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:attack_knockback modifier remove ca.confused_kb
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:movement_speed modifier remove ca.confused_speed
$execute if score duration= carto_event matches ..2 as $(target) at @s run attribute @s minecraft:attack_damage modifier remove ca.confused_atk

$execute if score duration= carto_event matches 1 as $(target) at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/block_effect/confused",duration:$(block_duration),delay:3,parameters:{},merge_behavior:"none"}

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run tag @s remove ca.has_custom_status_confused
$execute as $(target) at @s if entity @s[tag=ca.unstoppable] run return 0

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_confused
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1