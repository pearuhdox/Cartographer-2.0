execute if entity @s[gamemode=creative] run loot give @s mine 4206900 16 4206900 debug_stick[minecraft:custom_data={drop_contents:1b}]

execute if entity @s[gamemode=creative] run give @p glow_item_frame[entity_data={id:"minecraft:glow_item_frame",Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_data":{CartoCreditsBlock:1b}}}},custom_name={"bold":true,"color":"green","italic":false,"text":"Cartographer Credits Block"},lore=[{"color":"white","italic":false,"text":"A block that can be clicked to"},{"color":"white","italic":false,"text":"view the credits for Cartographer."},{"color":"white","italic":false,"text":"Please place this if you disable"},{"color":"white","italic":false,"text":"the Cartographer reload menu!"}," ",{"color":"white","italic":false,"text":"Sneak Punching the block in"},{"color":"white","italic":false,"text":"Creative Mode will destroy it."}],enchantment_glint_override=true] 1

execute if entity @s[gamemode=creative] if score $ender_pouch ca.installed matches 1.. run function cartographer_ender_pouch:give/ender

scoreboard players set @s give_dev_box 0

execute if entity @s[gamemode=creative] run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1