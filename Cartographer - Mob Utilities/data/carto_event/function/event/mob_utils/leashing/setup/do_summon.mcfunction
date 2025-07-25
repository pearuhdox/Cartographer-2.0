$summon $(entity_id) ~ ~ ~ $(nbt)

$execute as @e[type=$(entity_id),distance=..1,sort=nearest,limit=1] run function carto_event:event/mob_utils/leashing/setup/merge_data with storage cartographer_mob_utils:leashing data