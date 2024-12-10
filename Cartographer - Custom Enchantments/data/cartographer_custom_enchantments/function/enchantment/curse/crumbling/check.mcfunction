data modify storage cartographer_custom_enchantments:crumbling items set value []
data modify storage cartographer_custom_enchantments:crumbling inventory set value []
data modify storage cartographer_custom_enchantments:crumbling inventory set from entity @s Inventory

data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:0b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:1b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:2b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:3b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:4b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:5b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:6b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:7b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:8b}]

data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:-106b}]

data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:100b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:101b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:102b}]
data modify storage cartographer_custom_enchantments:crumbling items append from storage cartographer_custom_enchantments:crumbling inventory[{Slot:103b}]

execute if data storage cartographer_custom_enchantments:crumbling items[0] run function cartographer_custom_enchantments:enchantment/curse/crumbling/iterate