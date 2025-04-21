data modify storage cartographer:lexica sub_page set value []

execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[0] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[0]

execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[1] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[1]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[2] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[2]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[3] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[3]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[4] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[4]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[5] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[5]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[6] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[6]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[7] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[7]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[8] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[8]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[9] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[9]
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[10] run data modify storage cartographer:lexica sub_page append from storage cartographer:lexica item.components.minecraft:bundle_contents[10]

data modify storage cartographer:lexica sub_page append value {id:"minecraft:filled_map",components:{"minecraft:item_model":"minecraft:feather","minecraft:max_stack_size":1,"minecraft:custom_name":'[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "lexica.lore.next_page", fallback: "Next Page", bold: true, underlined: false, italic: false, color: "aqua"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}]',"minecraft:custom_data":{lexica_page:1b,lexica_next_page:1b,category:"next_sub_page",id:"next_sub_page"}}}

data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]
data remove storage cartographer:lexica item.components.minecraft:bundle_contents[1]

data modify storage cartographer:lexica item.components.minecraft:custom_data.sub_page_list append from storage cartographer:lexica sub_page

execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[1] run function cartographer_lexica:lexica/change/describe/get_pages/sub_pages/create