execute store result score $sub_page_ct ca.lexica_size run data get storage cartographer:lexica item.components.minecraft:custom_data.sub_page_list

execute store result score $sub_page_num ca.lexica_size run data get storage cartographer:lexica item.components.minecraft:custom_data.sub_page_num
scoreboard players add $sub_page_num ca.lexica_size 1
execute if score $sub_page_num ca.lexica_size >= $sub_page_ct ca.lexica_size run scoreboard players set $sub_page_num ca.lexica_size 0
execute store result storage cartographer:lexica item.components.minecraft:custom_data.sub_page_num int 1 run scoreboard players get $sub_page_num ca.lexica_size

function cartographer_lexica:lexica/change/page/change_sub_page_macro with storage cartographer:lexica item.components.minecraft:custom_data