data modify storage cartographer:ender_pouch item set value {}

data modify storage cartographer:ender_pouch item set from storage cartographer:ender_pouch bag.components."minecraft:bundle_contents"[0]


execute unless data storage cartographer:ender_pouch item.components.minecraft:custom_data.no_ender_pouch run function cartographer_ender_pouch:ender/success with storage cartographer:ender_pouch

execute if data storage cartographer:ender_pouch item.components.minecraft:custom_data.no_ender_pouch run function cartographer_ender_pouch:ender/block

data remove storage cartographer:ender_pouch bag.components."minecraft:bundle_contents"[0]

execute if data storage cartographer:ender_pouch bag.components."minecraft:bundle_contents"[0] run function cartographer_ender_pouch:ender/iterate