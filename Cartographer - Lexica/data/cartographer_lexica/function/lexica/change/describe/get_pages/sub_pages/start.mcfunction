scoreboard players operation $branch_count ca.lexica_size = @s ca.lexica_size
scoreboard players remove $branch_count ca.lexica_size 1

data modify storage cartographer:lexica item.components.minecraft:custom_data.sub_page_list set value []

function cartographer_lexica:lexica/change/describe/get_pages/sub_pages/create

data modify storage cartographer:lexica item.components.minecraft:bundle_contents set value []
data modify storage cartographer:lexica item.components.minecraft:bundle_contents set from storage cartographer:lexica item.components.minecraft:custom_data.sub_page_list[0]
data modify storage cartographer:lexica item.components.minecraft:custom_data.sub_page_num set value 0