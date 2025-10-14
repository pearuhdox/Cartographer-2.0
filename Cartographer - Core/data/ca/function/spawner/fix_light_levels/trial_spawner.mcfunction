data modify storage cartographer_core:spawnerify spawner set value {}

data modify storage cartographer_core:spawnerify spawner set from block ~ ~-1 ~

$data modify storage cartographer_core:spawnerify spawner.normal_config.spawn_potentials[0].data.entity.custom_spawn_rules set value {sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:$(light)}}

data remove storage cartographer_core:spawnerify spawner.spawn_data

setblock ~ ~-1 ~ glass replace

setblock ~ ~-1 ~ trial_spawner replace

data modify block ~ ~-1 ~ {} merge from storage cartographer_core:spawnerify spawner
