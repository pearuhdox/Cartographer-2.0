#$execute as $(target) at @s run say radius: $(radius)

$execute as $(target) at @s if entity @e[type=#cartographer_core:affected_by_carto,distance=..$(radius),predicate=cartographer_core:potion_effect/has_nausea] run function carto_event:event/lingering_potion/aec_event/apply_effect/target with storage carto_event current[-1].parameters
$execute as $(target) at @s if entity @a[distance=..$(radius),predicate=cartographer_core:potion_effect/has_nausea] run function carto_event:event/lingering_potion/aec_event/apply_effect/self with storage carto_event current[-1].parameters

$execute as $(target) at @s run data modify storage carto_event current[-1].parameters.radius set from entity @s Radius

#$execute as $(target) at @s store result score $radius ca.lc_var run data get entity @s Radius 10

return 1