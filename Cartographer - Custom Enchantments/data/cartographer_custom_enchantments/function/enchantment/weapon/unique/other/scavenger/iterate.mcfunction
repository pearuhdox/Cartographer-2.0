data modify storage cartographer_custom_enchantments:scavenger item_check set value {}
data modify storage cartographer_custom_enchantments:scavenger item_check set from storage cartographer_custom_enchantments:scavenger items[0]

execute if data storage cartographer_custom_enchantments:scavenger item_check{id:"minecraft:crossbow"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/iterate_crossbow
execute unless data storage cartographer_custom_enchantments:scavenger item_check{id:"minecraft:crossbow"} run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/iterate_consumable

data remove storage cartographer_custom_enchantments:scavenger items[0]
execute if data storage cartographer_custom_enchantments:scavenger items[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/iterate