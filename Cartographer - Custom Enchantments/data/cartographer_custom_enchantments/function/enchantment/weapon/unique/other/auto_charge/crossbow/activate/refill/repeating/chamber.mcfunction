data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:charged_projectiles append from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_quiver[0]

#execute if score $multishot ca.ench_auto_charge_slot matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/refill/repeating/multishot

data remove storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_quiver[0]