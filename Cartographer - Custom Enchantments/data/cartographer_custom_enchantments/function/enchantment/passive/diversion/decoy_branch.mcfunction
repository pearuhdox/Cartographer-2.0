function carto_event:api/create_single_entity_event {event:"custom_ench/diversion",duration:120,delay:003,parameters:{},merge_behavior:"merge"}

execute if block ~ ~ ~ #cartographer_core:can_raycast run function cartographer_custom_enchantments:enchantment/passive/diversion/raycast_down

tag @s remove ca.new_decoy