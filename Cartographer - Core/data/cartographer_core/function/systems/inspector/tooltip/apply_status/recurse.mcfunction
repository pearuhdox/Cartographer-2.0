function cartographer_core:systems/inspector/tooltip/apply_status/fetch with storage cartographer_core:inspector itr.components.minecraft:custom_data.apply_status[0]

data remove storage cartographer_core:inspector itr.components.minecraft:custom_data.apply_status[0]

execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.apply_status[0] run data modify storage cartographer_core:inspector lore append value '{"text":" "}'

execute if data storage cartographer_core:inspector itr.components.minecraft:custom_data.apply_status[0] run function cartographer_core:systems/inspector/tooltip/apply_status/recurse