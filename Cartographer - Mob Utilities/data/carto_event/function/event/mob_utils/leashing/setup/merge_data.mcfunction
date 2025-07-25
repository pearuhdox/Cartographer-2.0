
data modify entity @s leash.UUID set from storage cartographer_mob_utils:leashing data.UUID

data modify entity @s data.leashed_parent set from storage cartographer_mob_utils:leashing data.UUID

$execute if score $linked ca.leash_var matches 1.. run function carto_event:api/create_single_entity_event {event:"mob_utils/leashing/linked",duration:32767,delay:0,parameters:{owner:"$(hex_UUID)"},merge_behavior:"none"}

tag @s add ca.leashed_entity
tag @s add ca.custom_leashing