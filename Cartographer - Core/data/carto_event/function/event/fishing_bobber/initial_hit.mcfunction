function gu:generate
data modify storage carto_event current[-1].parameters.victim set from storage gu:main out

data modify storage cartographer_core:fishing_bobber_data data set value {}
data modify storage cartographer_core:fishing_bobber_data data set from storage carto_event current[-1].parameters

function #minecraft:cartographer/api/handlers/checkers/projectile_hit

tag @s add ca.tagged_entity