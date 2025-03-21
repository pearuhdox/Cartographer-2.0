#tellraw @p {"score":{"name":"$force","objective":"ca.ench_var"}}

# at @s anchored feet positioned ^ ^ ^ facing entity @n[tag=ca.pulling_owner] feet facing ^ ^ ^1 rotated ~ -25 run 

$function carto_event:api/create_single_entity_event {event:"custom_ench/pulling",duration:1,delay:1,parameters:{strength:$(strength),entity:"$(entity)"},merge_behavior:"none"}
