scoreboard players set $infect_particle ca.infect_raycast 12
execute anchored eyes positioned ^ ^ ^0.25 run function carto_event:event/custom_statuses/infected/particle_rec with storage cartographer_custom_statuses:infected_proc data

$damage @s $(death_dmg) cartographer_custom_statuses:status_damage by $(owner)

$function carto_event:api/create_single_entity_event {event:"custom_statuses/infected",duration:$(duration),delay:010,parameters:{tick_rate:$(tick_rate),damage:$(damage),targets:$(targets),range:$(range),death_damage:$(death_dmg),owner:"$(owner)"},merge_behavior:"custom"}