data modify storage cartographer_core:fishing_bobber_data data set value {}
data modify storage cartographer_core:fishing_bobber_data data set from storage carto_event current[-1].parameters

function #minecraft:cartographer/api/handlers/checkers/projectile_hit

tag @s remove ca.tagged_entity