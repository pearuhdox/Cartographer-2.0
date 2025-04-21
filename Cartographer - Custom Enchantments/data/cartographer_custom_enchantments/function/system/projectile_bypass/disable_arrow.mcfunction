#say disabled

tag @s add ca.disabled_arrow

function carto_event:api/create_single_entity_event {event:"arrow_bypass_handler",duration:1,delay:1,parameters:{},merge_behavior:"none"}
