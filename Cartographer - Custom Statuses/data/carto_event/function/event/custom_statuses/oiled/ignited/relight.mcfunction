$function carto_event:api/create_single_entity_event {event:"custom_statuses/oiled/ignited",duration:$(tick_rate),delay:2,parameters:{tick_command:"$(tick_command)",proc_command:"$(proc_command)",owner:"$(owner)",damage:$(damage),tick_rate:$(tick_rate),cauterize_threshold:$(cauterize_threshold),cauterize_percent:$(cauterize_percent),wildfire_range:$(wildfire_range),wildfire_targets:$(wildfire_targets),wildfire_time:$(wildfire_time)},merge_behavior:"custom"}

$scoreboard players set $fire_duration ca.oiled_duration $(tick_rate)
scoreboard players add $fire_duration ca.oiled_duration 3

execute store result score $prev_fire_duration ca.oiled_duration run data get entity @s Fire 1

execute if score $prev_fire_duration ca.oiled_duration > $fire_duration ca.oiled_duration run scoreboard players operation @s ca.oiled_duration > $prev_fire_duration ca.oiled_duration

execute store result entity @s Fire short 1 run scoreboard players get $fire_duration ca.oiled_duration

effect give @s fire_resistance 1 0 true