data modify storage cartographer:lexica item.components.minecraft:bundle_contents set value []
$data modify storage cartographer:lexica item.components.minecraft:bundle_contents set from storage cartographer:lexica item.components.minecraft:custom_data.sub_page_list[$(sub_page_num)]
data modify storage cartographer:lexica item.components.minecraft:custom_data.contents set value []
data modify storage cartographer:lexica item.components.minecraft:custom_data.contents set from storage cartographer:lexica item.components.minecraft:bundle_contents
