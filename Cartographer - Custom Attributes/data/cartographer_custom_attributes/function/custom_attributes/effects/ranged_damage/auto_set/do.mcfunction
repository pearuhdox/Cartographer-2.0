data modify storage cartographer:custom_attributes auto_set_ranged_damage set value {}

$data modify storage cartographer:custom_attributes auto_set_ranged_damage.item set from entity @s $(grab_path)

data modify storage cartographer:custom_attributes auto_set_ranged_damage.item.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount set value 1

$execute if items entity @s weapon.$(slot) bow run data modify storage cartographer:custom_attributes auto_set_ranged_damage.item.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount set value 8
$execute if items entity @s weapon.$(slot) crossbow run data modify storage cartographer:custom_attributes auto_set_ranged_damage.item.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount set value 8
$execute if items entity @s weapon.$(slot) trident run data modify storage cartographer:custom_attributes auto_set_ranged_damage.item.components.minecraft:custom_data.custom_attributes.ranged_damage.base.amount set value 8

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_attributes auto_set_ranged_damage.item

$loot replace entity @s weapon.$(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]