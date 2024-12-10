data modify storage cartographer_custom_enchantments:reconstruction items set value []
data modify storage cartographer_custom_enchantments:reconstruction inventory set value []
data modify storage cartographer_custom_enchantments:reconstruction inventory set from entity @s Inventory

data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:0b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:1b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:2b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:3b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:4b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:5b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:6b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:7b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:8b}]

data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:-106b}]

data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:100b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:101b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:102b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:103b}]

execute if data storage cartographer_custom_enchantments:reconstruction items[0] run function cartographer_custom_enchantments:enchantment/passive/reconstruction/iterate