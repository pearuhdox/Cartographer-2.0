tag @s remove ca.new_morph_sheep

data modify entity @s ArmorItems set from storage cartographer_custom_statuses:morphed equipment.armor
data modify entity @s HandItems set from storage cartographer_custom_statuses:morphed equipment.weapons

$attribute @s minecraft:generic.knockback_resistance modifier add sheep_kbr $(kbr) add_value
$attribute @s minecraft:generic.movement_speed modifier add sheep_speed $(speed) add_multiplied_total

$function carto_event:api/create_single_entity_event {event:"custom_statuses/morphed/sheep",duration:$(duration),delay:001,parameters:{tick_command:"$(tick_command)",percent_eff_health:$(percent_eff_health),block_duration:$(block_duration),related_entity:$(entity)},merge_behavior:"custom"}