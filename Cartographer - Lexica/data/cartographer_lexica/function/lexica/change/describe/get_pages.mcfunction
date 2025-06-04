function cartographer_lexica:lexica/change/describe/get_pages/reset

execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:custom_data.apply_status run scoreboard players set $has_status ca.lexica_var 1

execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:enchantments run function cartographer_lexica:lexica/change/describe/get_pages/enchantments {enchant_path:"minecraft:enchantments"}
execute if data storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:stored_enchantments run function cartographer_lexica:lexica/change/describe/get_pages/enchantments {enchant_path:"minecraft:stored_enchantments"}

function cartographer_lexica:lexica/change/describe/get_pages/attributes

function cartographer_lexica:lexica/change/describe/get_pages/vanilla_attributes

execute if score $has_status ca.lexica_var matches 1.. run function cartographer_lexica:lexica/change/describe/get_pages/statuses

execute if score $has_keyword ca.lexica_var matches 1 run function cartographer_lexica:lexica/change/describe/get_pages/keywords

execute store result score @s ca.lexica_size run data get storage cartographer:lexica item.components.minecraft:bundle_contents

execute if score @s ca.lexica_size matches 1 run data modify storage cartographer:lexica item.components.minecraft:bundle_contents append value {id:"minecraft:filled_map",components:{"minecraft:item_model":"minecraft:barrier","minecraft:max_stack_size":1,"minecraft:custom_name":[{text: "[", bold: true, underlined: false, italic: false, color: "white"},{translate: "lexica.lore.no_information", fallback: "No Lexica Information", bold: true, underlined: false, italic: false, color: "red"},{text: "]", bold: true, underlined: false, italic: false, color: "white"}],"minecraft:custom_data":{lexica_page:1b,category:"no_information",id:"no_information"}}}
execute if score @s ca.lexica_size matches 1 run scoreboard players add @s ca.lexica_size 1

execute if score @s ca.lexica_size matches 13.. run function cartographer_lexica:lexica/change/describe/get_pages/sub_pages/start

data modify storage cartographer:lexica item.components.minecraft:custom_data.contents set value []
data modify storage cartographer:lexica item.components.minecraft:custom_data.contents set from storage cartographer:lexica item.components.minecraft:bundle_contents

