scoreboard players set $gadget ca.inspect_var -1000
scoreboard players operation $old_val ca.inspect_var = @s ca.inspect_state

execute if data storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].Slot store result score $total_ct ca.inspect_var run clear @s bundle[custom_data={CartographerInspector:1b}] 0 
execute if score $total_ct ca.inspect_var matches 2.. run clear @s bundle[minecraft:bundle_contents=[],custom_data={CartographerInspector:1b}] 1

execute if score $total_ct ca.inspect_var matches 1.. if data storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].Slot store result score $gadget ca.inspect_var run data get storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].Slot


execute if data storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].Slot store result score $gadget ca.inspect_var run data get storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].Slot

data modify storage cartographer_core:inspector Item set value {}
data modify storage cartographer_core:inspector Item set from storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].components.minecraft:bundle_contents[0]

data modify storage cartographer_core:inspector items set value []
data modify storage cartographer_core:inspector itr set value {}

execute if score $gadget ca.inspect_var matches -106.. run data modify storage cartographer_core:inspector items set from storage cartographer_core:player_inventory Inventory[{id:"minecraft:bundle",components:{"minecraft:custom_data":{CartographerInspector:1b}}}].components.minecraft:bundle_contents

execute if score $gadget ca.inspect_var matches -106.. run data modify storage cartographer_core:inspector itr set from storage cartographer_core:inspector items[0]

execute if score $gadget ca.inspect_var matches -106.. if data storage cartographer_core:inspector itr.id run scoreboard players set @s ca.inspect_state 2
execute if score $gadget ca.inspect_var matches -106.. unless data storage cartographer_core:inspector itr.id run scoreboard players set @s ca.inspect_state 1

data modify storage cartographer_core:inspector lore set value []

execute unless score $old_val ca.inspect_var = @s ca.inspect_state run function cartographer_core:systems/inspector/needs_change