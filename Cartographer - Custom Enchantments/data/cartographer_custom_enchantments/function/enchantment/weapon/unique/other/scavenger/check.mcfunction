data modify storage cartographer_custom_enchantments:scavenger items set value []
data modify storage cartographer_custom_enchantments:scavenger items append from entity @s Inventory[{components:{"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/other/scavenger":1}}}]

execute if data entity @s equipment.offhand.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/scavenger run data modify storage cartographer_custom_enchantments:scavenger items append from entity @s equipment.offhand
execute if data entity @s equipment.offhand.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/scavenger run data modify storage cartographer_custom_enchantments:scavenger items[-1].Slot set value -106b

execute if data storage cartographer_custom_enchantments:scavenger items[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/iterate