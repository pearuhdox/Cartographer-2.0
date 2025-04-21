function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"passive/",enchantment:"vengeance",type:"passive"}

scoreboard players set @s ca.vengeance_stack 1
tag @s remove ca.used_vengeance_attack

function carto_event:api/create_single_entity_event {event:"custom_ench/vengeance",duration:160,delay:0,parameters:{},merge_behavior:"merge"}