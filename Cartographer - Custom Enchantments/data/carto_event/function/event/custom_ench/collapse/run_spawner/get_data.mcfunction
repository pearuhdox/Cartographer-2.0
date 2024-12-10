execute store result score $collapse_spawn_count ca.ench_collapse_lvl run data get block ~ ~ ~ SpawnCount
execute store result score $collapse_max_nearby ca.ench_collapse_lvl run data get block ~ ~ ~ MaxNearbyEntities
scoreboard players operation $collapse_spawn_count ca.ench_collapse_lvl < $collapse_max_nearby ca.ench_collapse_lvl

scoreboard players operation $collapse_spawn_count ca.ench_collapse_lvl /= $2 ca.CONSTANT
execute if score $collapse_spawn_count ca.ench_collapse_lvl matches ..0 run scoreboard players set $collapse_spawn_count ca.ench_collapse_lvl 1

data modify storage cartographer_custom_enchantments:collapse id set value {}
data modify storage cartographer_custom_enchantments:collapse data set value {}


data modify storage cartographer_custom_enchantments:collapse id set from block ~ ~ ~ SpawnData.entity.id
data modify storage cartographer_custom_enchantments:collapse data set from block ~ ~ ~ SpawnData.entity
data remove storage cartographer_custom_enchantments:collapse data.id

execute if score $collapse_spawn_count ca.ench_collapse_lvl matches 1.. run function carto_event:event/custom_ench/collapse/run_spawner/recurse_spawn with storage cartographer_custom_enchantments:collapse