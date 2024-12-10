$data modify storage carto_event all.$(current_tick)[-1].parameters.status_info.enchantment_hit set from storage carto_event current[-1].parameters.status_info.enchantment_hit

$data modify storage carto_event all.$(current_tick)[-1].parameters.telegraph set from storage cartographer:custom_enchantments telegraph
