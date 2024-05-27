function cartographer_core:systems/inspector/tooltip/custom_statuses/fetch with storage cartographer_core:inspector itr.components.minecraft:custom_data.custom_statuses[0]

data remove storage cartographer_core:inspector itr.components.minecraft:custom_data.custom_statuses[0]

execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.custom_statuses[0] run data modify storage cartographer_core:inspector lore append value '{"text":" "}'

execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.custom_statuses[0] run function cartographer_core:systems/inspector/tooltip/custom_statuses/recurse