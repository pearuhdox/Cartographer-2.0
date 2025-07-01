data modify storage cartographer_mob_utils:creeper data set value {type:"cartographer_mob_utils:fake_explosion",range:6,damage:40,falloff:1}
data modify storage cartographer_mob_utils:creeper data merge from entity @s data

execute store result storage cartographer_mob_utils:creeper data.scale double 1.7 run attribute @s scale get
execute store result storage cartographer_mob_utils:creeper data.explosion_radius int 1 run data get entity @s ExplosionRadius

data modify entity @s ExplosionRadius set value 0

execute unless entity @s[tag=ca.needs_checker,type=creeper] run function cartographer_core:handlers/register/apply_creeper_checker
tag @s add ca.needs_checker

execute on passengers if entity @s[tag=ca.creeper_checker] run function carto_event:event/mob_utils/custom_explosion/get_checker_uuid

function carto_event:api/create_single_entity_event {event:"mob_utils/custom_explosion",duration:32767,delay:0,parameters:{},merge_behavior:"none"}