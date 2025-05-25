function cartographer_lexica:lexica/get_user_id

execute unless data block 4206900 8 4206900 Items[0] run data modify block 4206900 8 4206900 Items append value {Slot:0b,components:{"minecraft:custom_data":{lexica_cartographia:1b},"minecraft:custom_name":{bold:true,color:"#FFE0A3",fallback:"Lexica Cartographia",italic:false,translate:"cartographer.lexica.name"},"minecraft:enchantment_glint_override":1b,"minecraft:item_model":"minecraft:writable_book","minecraft:lore":[{color:"#79A4C9",fallback:"Place an item in this book",italic:false,translate:"cartographer.lexica.lore.base_1"},{color:"#79A4C9",fallback:"to learn more about it!",italic:false,translate:"cartographer.lexica.lore.base_2"}]},count:1,id:"minecraft:bundle"}

execute if score $user_id lexica matches 1.. run function cartographer_lexica:trigger/custom_skins

execute unless score $user_id lexica matches 1.. run loot give @s mine 4206900 8 4206900 debug_stick[minecraft:custom_data={drop_contents:1b}] 


scoreboard players set @s lexica 0