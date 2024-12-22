data modify storage cartographer:custom_enchantments quick_strike_item set value {}
data modify storage cartographer:custom_enchantments quick_strike_item set from entity @s SelectedItem

data modify storage cartographer:custom_enchantments quick_strike_item.components.minecraft:custom_data.quick_strike_applied set value 1b
data modify storage cartographer:custom_enchantments quick_strike_item.components.minecraft:custom_data.quick_strike_cooldown set value 0
data modify storage cartographer:custom_enchantments quick_strike_item.components.minecraft:custom_data.quick_strike_state set value 2b
data modify storage cartographer:custom_enchantments quick_strike_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments quick_strike_item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]