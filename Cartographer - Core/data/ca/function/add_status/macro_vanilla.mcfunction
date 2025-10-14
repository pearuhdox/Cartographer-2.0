data modify storage cartographer_core:enchant_item data.item set from entity @s SelectedItem
$data modify storage cartographer_core:enchant_item data.item.components.minecraft:custom_data.apply_status.$(action).$(affects) append value {id:"$(id)",effect:"$(effect)",duration:$(dur),amplifier:$(amp),conditions:{$(conditions)}}

data modify storage cartographer_core:enchant_item data.item.components.minecraft:enchantments.cartographer_custom_statuses:coating set value 1b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_core:enchant_item data.item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]