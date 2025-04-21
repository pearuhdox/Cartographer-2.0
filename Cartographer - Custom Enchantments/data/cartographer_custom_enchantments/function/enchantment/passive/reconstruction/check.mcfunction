data modify storage cartographer_custom_enchantments:reconstruction items set value []
data modify storage cartographer_custom_enchantments:reconstruction inventory set value []
data modify storage cartographer_custom_enchantments:reconstruction inventory set from entity @s Inventory
data modify storage cartographer_custom_enchantments:reconstruction equipment set value {}
data modify storage cartographer_custom_enchantments:reconstruction equipment set from entity @s equipment

data modify storage cartographer_custom_enchantments:reconstruction equipment.feet.Slot set value 100b
data modify storage cartographer_custom_enchantments:reconstruction equipment.offhand.Slot set value -106b
data modify storage cartographer_custom_enchantments:reconstruction equipment.legs.Slot set value 101b
data modify storage cartographer_custom_enchantments:reconstruction equipment.chest.Slot set value 102b
data modify storage cartographer_custom_enchantments:reconstruction equipment.head.Slot set value 103b

data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:0b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:1b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:2b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:3b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:4b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:5b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:6b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:7b}]
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction inventory[{Slot:8b}]

data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction equipment.offhand
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction equipment.feet
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction equipment.legs
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction equipment.chest
data modify storage cartographer_custom_enchantments:reconstruction items append from storage cartographer_custom_enchantments:reconstruction equipment.head

execute if data storage cartographer_custom_enchantments:reconstruction items[0] run function cartographer_custom_enchantments:enchantment/passive/reconstruction/iterate