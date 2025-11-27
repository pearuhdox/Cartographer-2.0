scoreboard players set @s ca.special_attack_windup 0
$function carto_event:api/create_single_entity_event {event:"custom_ench/slamming/entity",duration:100,delay:$(delay),parameters:{windup:$(windup),telegraph:"$(telegraph)",size:$(size),half_size:$(half_size),size_neg_1:$(size_neg_1),damage:$(damage)},merge_behavior:"none"}

tag @s add ca.is_slamming