
data modify storage cartographer:lexica new_lore set value []


$data modify storage cartographer:lexica new_lore set from storage cartographer_lexica:descriptions descriptions.$(category).$(id)

data modify storage cartographer:lexica new_lore prepend value {color:"white",text:" "}
data modify storage cartographer:lexica new_lore prepend from storage cartographer:lexica item.components.minecraft:lore[2]
data modify storage cartographer:lexica new_lore prepend from storage cartographer:lexica item.components.minecraft:lore[1]
data modify storage cartographer:lexica new_lore prepend from storage cartographer:lexica item.components.minecraft:lore[0]


data modify storage cartographer:lexica item.components.minecraft:lore set from storage cartographer:lexica new_lore
data modify storage cartographer:lexica item.components.minecraft:bundle_contents set from storage cartographer:lexica item.components.minecraft:custom_data.contents