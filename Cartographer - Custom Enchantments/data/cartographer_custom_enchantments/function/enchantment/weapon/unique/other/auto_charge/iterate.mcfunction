data modify storage cartographer_custom_enchantments:auto_charge item_check set value {}
data modify storage cartographer_custom_enchantments:auto_charge item_check set from storage cartographer_custom_enchantments:auto_charge items[0]

execute if data storage cartographer_custom_enchantments:auto_charge item_check{id:"minecraft:crossbow"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/iterate_crossbow
execute unless data storage cartographer_custom_enchantments:auto_charge item_check{id:"minecraft:crossbow"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/iterate_consumable

data remove storage cartographer_custom_enchantments:auto_charge items[0]
execute if data storage cartographer_custom_enchantments:auto_charge items[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/iterate