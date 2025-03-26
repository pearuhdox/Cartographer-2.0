data modify storage cartographer:custom_enchantments irreparability_item set value {}
$data modify storage cartographer:custom_enchantments irreparability_item set from entity @s $(data)

data modify storage cartographer:custom_enchantments irreparability_item.components.minecraft:repair_cost set value 999

data modify storage cartographer:custom_enchantments irreparability_item.components.minecraft:custom_data.irreparability_applied set value 1b

data modify storage cartographer:custom_enchantments irreparability_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments irreparability_item

$loot replace entity @s $(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]