data modify storage cartographer_custom_enchantments:crumbling items set value []
data modify storage cartographer_custom_enchantments:crumbling inventory set value []
data modify storage cartographer_custom_enchantments:crumbling inventory set from entity @s Inventory
data modify storage cartographer_custom_enchantments:crumbling equipment set value []
data modify storage cartographer_custom_enchantments:crumbling equipment set from entity @s equipment

data modify storage cartographer_custom_enchantments:crumbling equipment.offhand.Slot set value -106b
data modify storage cartographer_custom_enchantments:crumbling equipment.feet.Slot set value 100b
data modify storage cartographer_custom_enchantments:crumbling equipment.legs.Slot set value 101b
data modify storage cartographer_custom_enchantments:crumbling equipment.chest.Slot set value 102b
data modify storage cartographer_custom_enchantments:crumbling equipment.head.Slot set value 103b

data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:0b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:1b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:2b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:3b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:4b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:5b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:6b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:7b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:8b}]

data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling equipment.offhand

data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling equipment.feet
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling equipment.legs
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling equipment.chest
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling equipment.head

execute if data storage cartographer_custom_enchantments:crumbling items[0] run function cartographer_custom_enchantments:enchantment/curse/crumbling/iterate