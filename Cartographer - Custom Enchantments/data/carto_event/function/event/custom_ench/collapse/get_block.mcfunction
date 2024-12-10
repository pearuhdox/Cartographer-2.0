function cartographer_core:handlers/get_block/save
data modify storage carto_event current[-1].parameters.block set value "minecraft:dirt"
data modify storage carto_event current[-1].parameters.block set from storage cartographer_core:get_block id

execute if block ~ ~ ~ spawner run data modify storage carto_event current[-1].parameters.block set value "minecraft:spawner"