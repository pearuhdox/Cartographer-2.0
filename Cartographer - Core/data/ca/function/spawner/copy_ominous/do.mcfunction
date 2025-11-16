data modify storage cartographer_core:spawnerify spawner set value {}

data modify storage cartographer_core:spawnerify spawner set from block ~ ~-1 ~

data modify storage cartographer_core:spawnerify spawner.ominous_config set from block ~ ~-1 ~ normal_config

data remove storage cartographer_core:spawnerify spawner.spawn_data

setblock ~ ~-1 ~ glass replace

setblock ~ ~-1 ~ trial_spawner replace

data modify block ~ ~-1 ~ {} merge from storage cartographer_core:spawnerify spawner
