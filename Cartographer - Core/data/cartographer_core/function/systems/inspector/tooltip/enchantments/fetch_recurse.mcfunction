data modify storage cartographer_core:inspector lore append from storage cartographer_core:inspector description[0]

data remove storage cartographer_core:inspector description[0]
execute if data storage cartographer_core:inspector description[0] run function cartographer_core:systems/inspector/tooltip/attributes/fetch_recurse