data modify storage cartographer_core:player_equip data set value {}

data modify storage cartographer_core:player_equip data.main set from entity @s SelectedItem
data modify storage cartographer_core:player_equip data.offh set from entity @s Inventory[{Slot:-106b}]
data modify storage cartographer_core:player_equip data.feet set from entity @s Inventory[{Slot:100b}]
data modify storage cartographer_core:player_equip data.legs set from entity @s Inventory[{Slot:101b}]
data modify storage cartographer_core:player_equip data.body set from entity @s Inventory[{Slot:102b}]
data modify storage cartographer_core:player_equip data.head set from entity @s Inventory[{Slot:103b}]

tag @s remove ca.do_enchant_calc