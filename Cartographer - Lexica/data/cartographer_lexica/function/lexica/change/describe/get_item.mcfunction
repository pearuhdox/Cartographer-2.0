data modify storage cartographer:lexica item set value {}
data modify storage cartographer:lexica item set from storage cartographer:lexica inventory[0]
data remove storage cartographer:lexica item.Slot

data modify storage cartographer:lexica item_id set string storage cartographer:lexica item.components.minecraft:bundle_contents[0].id 10
data remove storage cartographer:lexica item_name
data modify storage cartographer:lexica item_name set from storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:item_name
execute unless data storage cartographer:lexica item_name run data modify storage cartographer:lexica item_name set from storage cartographer:lexica item.components.minecraft:bundle_contents[0].components.minecraft:custom_name

data remove storage cartographer:lexica visual
data remove storage cartographer:lexica return
execute unless data storage cartographer:lexica item_name run function cartographer_lexica:lexica/change/describe/set_name_from_id with storage cartographer:lexica
execute if data storage cartographer:lexica item_name run data modify storage cartographer:lexica visual set from storage cartographer:lexica item_name

function cartographer_lexica:lexica/change/describe/get_item_name

data modify storage cartographer:lexica item.components.minecraft:lore set value [{color:"#79A4C9",fallback:"Hover + Scroll on this item to see",italic:false,translate:"cartographer.lexica.lore.inspect_2"},[{color:"#79A4C9",fallback:"pages, then",italic:false,translate:"cartographer.lexica.lore.inspect_3"},{color:"white",italic:false,text:" ["},{color:"aqua",italic:false,"keybind":"key.use"},{color:"white",italic:false,text:"] "},{color:"#79A4C9",fallback:"to read one.",italic:false,translate:"cartographer.lexica.lore.inspect_4"}]]
data modify storage cartographer:lexica item.components.minecraft:lore prepend from storage cartographer:lexica return