$damage @s $(damage) cartographer_custom_statuses:status_damage by $(owner)

$scoreboard players add @s ca.bleed_buffer $(damage)

playsound minecraft:entity.generic.hurt hostile @a[distance=..16] ~ ~ ~ 1 0.5

scoreboard players operation @s ca.bleed_amt /= $2 ca.CONSTANT

execute if score @s ca.bleed_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:0.7,text:"-❤",color:"#db3636",buffer_name:"bleed"}

$execute unless score @s ca.bleed_amt matches ..1 run function carto_event:api/create_single_entity_event {event:"custom_statuses/bleeding",duration:$(tick_rate),delay:002,parameters:{tick_command:"$(tick_command)",proc_command:"$(proc_command)",tick_rate:$(tick_rate),amount:$(damage_half),owner:"$(owner)"},merge_behavior:"custom"}