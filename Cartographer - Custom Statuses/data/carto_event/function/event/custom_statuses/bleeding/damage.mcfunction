$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players operation @s ca.bleed_amt /= $2 ca.CONSTANT

$execute unless score @s ca.bleed_amt matches ..1 run function carto_event:api/create_single_entity_event {event:"custom_statuses/bleeding",duration:$(tick_rate),delay:002,parameters:{tick_command:"$(tick_command)",proc_command:"$(proc_command)",tick_rate:$(tick_rate),amount:$(damage_half),owner:"$(owner)"},merge_behavior:"custom"}