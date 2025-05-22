$tp @s $(x) $(y) $(z)

tag @s add ca.activated

$function carto_event:api/create_single_entity_event {event:"custom_ench/storm/cloud",duration:$(duration),delay:0,parameters:{owner:"$(owner)",size:$(size),half_size:$(half_size),quarter_size:$(quarter_size),size_neg_1:$(size_neg_1),damage:$(damage),rotation:0},merge_behavior:"none"}
function cartographer_custom_enchantments:enchantment/passive/storm/custom_statuses/append_status with storage carto_event macro