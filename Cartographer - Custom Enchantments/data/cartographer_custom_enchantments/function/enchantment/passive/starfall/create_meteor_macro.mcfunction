execute if entity @s[type=player] run playsound minecraft:entity.breeze.shoot player @a ~ ~ ~ 1 1.5
execute if entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 1.5 1.5

execute unless entity @s[type=player] run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 1.5
execute unless entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle hostile @a ~ ~ ~ 1.5 1.5

$function carto_event:api/create_single_entity_event {event:"custom_ench/starfall/meteor",duration:$(delay),delay:000,parameters:{meteor_height:$(delay),x:"$(x)",y:"$(y)",z:"$(z)",block:"$(block)",size:"$(size)",half_size:"$(half_size)",size_neg_1:"$(size_neg_1)",damage:"$(damage)"},merge_behavior:"none"}