data modify storage cartographer_custom_statuses:shackled particle set value {}
data modify storage cartographer_custom_statuses:shackled particle.victim set from storage cartographer_custom_statuses:shackled data.victim


$execute as @e[type=#cartographer_core:affected_by_carto,tag=ca.has_custom_status_shackled,distance=0.25..$(range),sort=nearest,limit=$(targets)] at @s run function carto_event:event/custom_statuses/shackled/damage with storage cartographer_custom_statuses:shackled data