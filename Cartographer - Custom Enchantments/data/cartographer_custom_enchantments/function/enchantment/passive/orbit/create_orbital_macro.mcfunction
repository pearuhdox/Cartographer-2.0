execute if entity @s[type=player] run playsound minecraft:item.armor.equip_netherite player @a[distance=..16] ~ ~ ~ 1 0.75
execute if entity @s[type=player] run playsound minecraft:entity.iron_golem.attack player @a[distance=..16] ~ ~ ~ 2 0.5

execute unless entity @s[type=player] run playsound minecraft:item.armor.equip_netherite hostile @a[distance=..16] ~ ~ ~ 1 0.75
execute unless entity @s[type=player] run playsound minecraft:entity.iron_golem.attack hostile @a[distance=..16] ~ ~ ~ 2 0.5

$function carto_event:api/create_single_entity_event {event:"custom_ench/orbit/orbital",duration:300,delay:$(delay),parameters:{hits:$(hits),rotation:$(rotation),display_entity:"$(display_entity)",speed:$(speed),size:$(size),length:$(length),half_size:"$(half_size)",size_neg_1:"$(size_neg_1)",damage:"$(damage)"},merge_behavior:"none"}