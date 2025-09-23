data modify storage cartographer_core:enchant_item data.item set from entity @s SelectedItem
$data modify storage cartographer_core:enchant_item data.item.components.minecraft:enchantments.$(path)$(name) set value $(lvl)

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_core:enchant_item data.item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]