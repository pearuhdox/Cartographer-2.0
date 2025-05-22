data modify storage cartographer:custom_enchantments status_enchant_hit.enchantment_hit set from storage carto_event current[-1].parameters.status_info.enchantment_hit

$function carto_event:api/create_single_entity_event {event:"custom_ench/induction/bolt",duration:1,delay:19,parameters:{spread:$(spread),length:$(length),damage:$(damage),owner:"$(owner)",previous:"$(previous)"},merge_behavior:"none"}
#function cartographer_custom_enchantments:enchantment/passive/induction/custom_statuses/append_status with storage carto_event macro

return 1