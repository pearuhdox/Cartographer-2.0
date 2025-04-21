data modify storage cartographer:lexica inventory set value []

data modify storage cartographer:lexica inventory append from entity @s Inventory[{components:{"minecraft:custom_data":{lexica_cartographia:1b}}}]

execute if data entity @s equipment.offhand.components.minecraft:custom_data.lexica_cartographia run data modify storage cartographer:lexica items append from entity @s equipment.offhand
execute if data entity @s equipment.offhand.components.minecraft:custom_data.lexica_cartographia run data modify storage cartographer:lexica items[-1].Slot set value -106b


scoreboard players set @s ca.lexica_slot -1000
execute if data storage cartographer:lexica inventory[0] store result score @s ca.lexica_slot run data get storage cartographer:lexica inventory[0].Slot

execute store result score $count ca.lexica_size run data get storage cartographer:lexica inventory[0].components.minecraft:bundle_contents

#If there is an item we describe it
execute unless score @s ca.lexica_state matches 2 if data storage cartographer:lexica inventory[0].components.minecraft:bundle_contents[0] run function cartographer_lexica:lexica/change/describe/main

#If a page is pulled we display it - in any mode that is not Creative
execute if score @s ca.lexica_state matches 2 if data storage cartographer:lexica inventory[0].components.minecraft:bundle_contents[0] if items entity @s player.cursor minecraft:filled_map[minecraft:custom_data~{lexica_page:1b}] run function cartographer_lexica:lexica/change/page/read

#If a page is pulled we return a fail state and reset the bundle - in Creative mode only
execute if score @s ca.lexica_state matches 2 if data storage cartographer:lexica inventory[0].components.minecraft:bundle_contents[0] unless items entity @s player.cursor minecraft:filled_map[minecraft:custom_data~{lexica_page:1b}] unless score $count ca.lexica_size = @s ca.lexica_size run function cartographer_lexica:lexica/change/page/fail


#If the user pulled out the main item we reset the lexica
execute if score @s ca.lexica_state matches 2 if data storage cartographer:lexica inventory[0].components.minecraft:bundle_contents[0].components.minecraft:custom_data.lexica_page run function cartographer_lexica:lexica/change/reset/main

#If there is no item Reset the Lexica
execute unless score @s ca.lexica_state matches 1 unless data storage cartographer:lexica inventory[0].components.minecraft:bundle_contents[0] run function cartographer_lexica:lexica/change/reset/main
