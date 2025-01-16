data modify storage cartographer_core:player_equip data set value {}

data modify storage cartographer_core:player_equip data.main set from entity @s SelectedItem
data modify storage cartographer_core:player_equip data.offh set from entity @s Inventory[{Slot:-106b}]
data modify storage cartographer_core:player_equip data.feet set from entity @s Inventory[{Slot:100b}]
data modify storage cartographer_core:player_equip data.legs set from entity @s Inventory[{Slot:101b}]
data modify storage cartographer_core:player_equip data.body set from entity @s Inventory[{Slot:102b}]
data modify storage cartographer_core:player_equip data.head set from entity @s Inventory[{Slot:103b}]

data modify entity 31192011-4452-2112-0000-000000000000 HandItems[0] set value {}
data modify entity 31192011-4452-2112-0000-000000000000 HandItems[1] set value {}

data modify entity 31192011-4452-2112-0000-000000000000 HandItems[0] set from storage cartographer_core:player_equip data.main
data modify entity 31192011-4452-2112-0000-000000000000 HandItems[1] set from storage cartographer_core:player_equip data.offh

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_core:wearables run data remove storage cartographer_core:player_equip data.main
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.offhand #cartographer_core:wearables run data remove storage cartographer_core:player_equip data.offh

#execute if data entity 31192011-4452-2112-0000-000000000000 HandItems[0].components.minecraft:equippable run data remove storage cartographer_core:player_equip data.main
#execute if data entity 31192011-4452-2112-0000-000000000000 HandItems[1].components.minecraft:equippable run data remove storage cartographer_core:player_equip data.offh

tag @s remove ca.do_enchant_calc