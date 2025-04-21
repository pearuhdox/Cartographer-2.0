data modify storage cartographer_custom_enchantments:auto_charge items set value []
data modify storage cartographer_custom_enchantments:auto_charge items append from entity @s Inventory[{components:{"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/other/auto_charge":1}}}]

execute if data entity @s equipment.offhand.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/auto_charge run data modify storage cartographer_custom_enchantments:auto_charge items append from entity @s equipment.offhand
execute if data entity @s equipment.offhand.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/auto_charge run data modify storage cartographer_custom_enchantments:auto_charge items[-1].Slot set value -106b

execute if data storage cartographer_custom_enchantments:auto_charge items[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/iterate