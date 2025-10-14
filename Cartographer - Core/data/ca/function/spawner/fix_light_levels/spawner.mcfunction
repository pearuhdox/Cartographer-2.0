data modify storage cartographer_core:spawnerify spawner set value {}

data modify storage cartographer_core:spawnerify spawner set from block ~ ~-1 ~

$data modify storage cartographer_core:spawnerify spawner.SpawnPotentials[0].data.entity.custom_spawn_rules set value {sky_light_limit:{min_inclusive:0,max_inclusive:15},block_light_limit:{min_inclusive:0,max_inclusive:$(light)}}

data modify storage cartographer_core:spawnerify spawner.SpawnData set from storage cartographer_core:spawnerify spawner.SpawnPotentials[0]

setblock ~ ~-1 ~ glass replace

setblock ~ ~-1 ~ spawner replace

data modify block ~ ~-1 ~ {} merge from storage cartographer_core:spawnerify spawner
