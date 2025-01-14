item replace block 4206900 6 4206900 container.0 from entity @s player.cursor

item replace entity @s player.cursor with air

execute unless data block 4206900 6 4206900 Items[0].components.minecraft:custom_data.lexica_next_page run function cartographer_lexica:lexica/change/page/find_page with block 4206900 6 4206900 Items[0].components.minecraft:custom_data
execute if data block 4206900 6 4206900 Items[0].components.minecraft:custom_data.lexica_next_page run function cartographer_lexica:lexica/change/page/change_sub_page

stopsound @s * minecraft:item.bundle.remove_one
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1.2