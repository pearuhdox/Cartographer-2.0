data modify storage cartographer_core:spawnerify spawner set value {}

data modify storage cartographer_core:spawnerify spawner set from block ~ ~-1 ~

$data modify storage cartographer_core:spawnerify spawner.normal_config.spawn_potentials[0].data.entity.equipment.$(slot) set from entity @s SelectedItem

data remove storage cartographer_core:spawnerify spawner.spawn_data

setblock ~ ~-1 ~ glass replace

setblock ~ ~-1 ~ trial_spawner replace

data modify block ~ ~-1 ~ {} merge from storage cartographer_core:spawnerify spawner
