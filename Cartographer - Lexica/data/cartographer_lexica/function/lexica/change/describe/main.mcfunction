execute unless entity @s[gamemode=creative] run playsound minecraft:ui.cartography_table.take_result player @s ~ ~ ~ 0.6 1
execute unless entity @s[gamemode=creative] run playsound minecraft:ui.cartography_table.take_result player @s ~ ~ ~ 0.6 1.1
execute unless entity @s[gamemode=creative] run playsound minecraft:ui.cartography_table.take_result player @s ~ ~ ~ 0.6 1.2

execute if entity @s[gamemode=creative] run playsound minecraft:item.bundle.insert_fail player @s ~ ~ ~ 0.75 2
execute if entity @s[gamemode=creative] run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 0.5 1.5

stopsound @s * minecraft:item.bundle.insert


scoreboard players set @s ca.lexica_state 2

function cartographer_lexica:lexica/change/describe/get_item

execute unless entity @s[gamemode=creative] run function cartographer_lexica:lexica/change/describe/get_pages
execute if entity @s[gamemode=creative] run function cartographer_lexica:lexica/change/describe/fail



function cartographer_lexica:lexica/change/describe/return_item

tag @s add ca.do_inv_fetch
tag @s add ca.do_inv_reset