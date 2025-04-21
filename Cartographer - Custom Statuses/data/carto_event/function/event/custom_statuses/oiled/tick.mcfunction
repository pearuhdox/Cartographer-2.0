$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle entity_effect{color:[0.176,0.157,0.212,1.00]} ~ ~ ~ 0.2 0.2 0.2 1 1 normal
$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/4 run particle block{block_state:"minecraft:coal_block"} ~ ~ ~ 0.2 0.4 0.2 1 3 normal

$execute if score $custom_attributes ca.installed matches 1.. as $(target) at @s if score duration= carto_event matches 2.. unless entity @s[tag=ca.has_custom_status_oiled] as $(owner) at @s run function carto_event:event/custom_statuses/oiled/modify_aoe/start

$execute as $(target) at @s run tag @s remove ca.has_custom_status_oiled
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.has_custom_status_oiled

$execute as $(target) at @s store result score $fire_check ca.oiled_duration run data get entity @s Fire

$scoreboard players set $warmup_time ca.oiled_duration $(warmup_time)
scoreboard players operation $warmup_time ca.oiled_duration *= $3 ca.CONSTANT

$execute as $(target) at @s if score $fire_check ca.oiled_duration matches 1.. unless entity @s[type=#cartographer_core:classes/fire_immune] unless predicate cartographer_core:potion_effect/has_fire_resistance run scoreboard players add @s ca.oiled_warmup 3

$execute as $(target) at @s if entity @s[type=#cartographer_core:classes/fire_immune] unless predicate cartographer_core:potion_effect/has_fire_resistance run scoreboard players add @s ca.oiled_warmup 1
$execute as $(target) at @s unless entity @s[type=#cartographer_core:classes/fire_immune] if predicate cartographer_core:potion_effect/has_fire_resistance run scoreboard players add @s ca.oiled_warmup 1
$execute as $(target) at @s if entity @s[type=#cartographer_core:classes/fire_immune] if predicate cartographer_core:potion_effect/has_fire_resistance run scoreboard players add @s ca.oiled_warmup 1

$execute as $(target) at @s if entity @s[tag=ca.has_custom_status_ignited_oiled] run scoreboard players set @s ca.oiled_warmup 32767

$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run function carto_event:api/create_single_entity_event {event:"custom_statuses/oiled/ignited",duration:$(tick_rate),delay:2,parameters:{tick_command:"$(tick_command)",proc_command:"$(proc_command)",owner:"$(owner)",tick_rate:$(tick_rate),damage:$(damage),cauterize_threshold:$(cauterize_threshold),cauterize_percent:$(cauterize_percent),wildfire_range:$(wildfire_range),wildfire_targets:$(wildfire_targets),wildfire_time:$(wildfire_time)},merge_behavior:"custom"}
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run damage @s 0.0001 cartographer_custom_statuses:status_damage by $(owner)

$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration positioned ~ ~1 ~ run particle dust{color:[0.373,0.871,0.855],scale:2} ~ ~ ~ 0.2 0.4 0.2 1 15 normal
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration positioned ~ ~0.2 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.2 0.3 0.03 100 normal
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration positioned ~ ~1 ~ run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 1.75
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration positioned ~ ~1 ~ run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.75 0.85
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run effect give @s fire_resistance 1 0 true
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration if data storage carto_event current[-1].parameters.proc_command run function carto_event:command_api/proc_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run scoreboard players operation $ignite_duration ca.oiled_duration = duration= carto_event 
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run scoreboard players operation $ignite_duration ca.oiled_duration > $fire_check ca.oiled_duration

$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run scoreboard players operation @s ca.oiled_duration = duration= carto_event 

$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run tag @s remove ca.has_custom_status_oiled
$execute as $(target) at @s if score @s ca.oiled_warmup >= $warmup_time ca.oiled_duration run return 0

$execute as $(target) at @s if data storage carto_event current[-1].parameters.tick_command run function carto_event:command_api/tick_command with storage carto_event current[-1].parameters

$execute as $(target) at @s if entity @s[tag=ca.cleansed] run tag @s remove ca.has_custom_status_oiled
$execute as $(target) at @s if entity @s[tag=ca.cleansed] run return 0
return 1