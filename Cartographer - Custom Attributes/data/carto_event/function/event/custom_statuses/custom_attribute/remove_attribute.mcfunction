data modify storage cartographer:custom_statuses custom_attr set value {}
data modify storage cartographer:custom_statuses custom_attr.item set from entity @s equipment.body

execute store result score $add_value_body ca.attr_var run data get storage carto_event current[-1].parameters.amount 100

$execute store result score $attr_value_body ca.attr_var run data get storage cartographer:custom_statuses custom_attr.item.components.minecraft:custom_data.custom_attributes.$(type).$(operation).amount 100
$execute store result storage cartographer:custom_statuses custom_attr.item.components.minecraft:custom_data.custom_attributes.$(type).$(operation).amount double 0.01 run scoreboard players operation $attr_value_body ca.attr_var -= $add_value_body ca.attr_var

$execute if score $attr_value_ody ca.attr_var matches 0 run data remove storage cartographer:custom_statuses custom_attr.item.components.minecraft:custom_data.custom_attributes.$(type).$(operation)


data modify storage cartographer:custom_statuses custom_attr.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []

data modify block 4206900 0 4206900 Items append from storage cartographer:custom_statuses custom_attr.item

loot replace entity @s armor.body 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

function cartographer_core:fetch_inventory
data modify storage cartographer_core:player_equip data.body set value {}
data modify storage cartographer_core:player_equip data.body set from storage cartographer:custom_statuses custom_attr.item

$function cartographer_custom_attributes:custom_attributes/calc_player/$(type)
