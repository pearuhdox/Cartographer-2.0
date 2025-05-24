data modify storage cartographer:custom_statuses custom_ench set value {}
data modify storage cartographer:custom_statuses custom_ench.item set from entity @s equipment.body

$execute store result score $ench_value_body ca.ench_value run data get storage cartographer:custom_statuses custom_ench.item.components.minecraft:enchantments."$(enchant_id)"
$execute store result storage cartographer:custom_statuses custom_ench.item.components.minecraft:enchantments."$(enchant_id)" int 1 run scoreboard players add $ench_value_body ca.ench_value $(level)

data modify storage cartographer:custom_statuses custom_ench.Slot set value 0b

data modify block 4206900 0 4200900 Items set value []

data modify block 4206900 0 4206900 Items append from storage cartographer:custom_statuses custom_ench.item

loot replace entity @s armor.body 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

function cartographer_core:fetch_inventory
data modify storage cartographer_core:player_equip data.body set value {}
data modify storage cartographer_core:player_equip data.body set from storage cartographer:custom_statuses custom_ench.item

$function cartographer_custom_enchantments:ench_calc/$(enchant_name)