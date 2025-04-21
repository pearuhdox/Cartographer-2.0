data remove entity @s potion_contents.custom_color

data modify entity @s potion_contents.custom_color set from storage cartographer:custom_statuses active_projectile.potion_land.custom_color
data modify entity @s potion_contents.potion set from storage cartographer:custom_statuses active_projectile.potion_land.potion

function cartographer_core:amd/read
data modify storage amd:mob_data working_data.data.projectile set from storage cartographer:custom_statuses active_projectile.potion_land
function cartographer_core:amd/write

$function carto_event:api/create_single_entity_event {event:"lingering_potion/aec_event",duration:600,delay:10,parameters:{radius:$(radius)},merge_behavior:"none"}