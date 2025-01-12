item replace block 4206900 6 4206900 container.0 from entity @s player.cursor

item replace entity @s player.cursor with air

function cartographer_lexica:lexica/change/page/find_page with block 4206900 6 4206900 Items[0].components.minecraft:custom_data

stopsound @s * minecraft:item.bundle.remove_one
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1.2