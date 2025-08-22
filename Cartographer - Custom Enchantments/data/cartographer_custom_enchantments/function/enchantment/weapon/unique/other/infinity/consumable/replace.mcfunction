scoreboard players set $inf_mainhand ca.ench_var 0
scoreboard players set $inf_offhand ca.ench_var 0
$scoreboard players set $inf_$(slot) ca.ench_var 1

data modify storage cartographer_custom_enchantments:infinity data set value {}
execute if score $inf_mainhand ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:infinity data.item set from entity @s SelectedItem
execute if score $inf_offhand ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:infinity data.item set from entity @s equipment.offhand

data remove storage cartographer_custom_enchantments:infinity data.item.Slot

data modify storage cartographer_custom_enchantments:infinity data.item.count set value 1
data modify storage cartographer_custom_enchantments:infinity data.item.components.minecraft:max_stack_size set value 1

data modify storage cartographer_custom_enchantments:infinity data.item.components.minecraft:intangible_projectile set value {}

#Set Use Cooldown Parameter
execute if data storage cartographer_custom_enchantments:infinity data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:infinity data.use_cooldown set from storage cartographer_custom_enchantments:infinity data.item.components.minecraft:use_cooldown
execute unless data storage cartographer_custom_enchantments:infinity data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:infinity data.use_cooldown set value {seconds:0.2,cooldown_group:"cartographer_infinity"}


#Set Use Remainder Parameter
data modify storage cartographer_custom_enchantments:infinity data.use_remainder set from storage cartographer_custom_enchantments:infinity data.item

data modify storage cartographer_custom_enchantments:infinity data.item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:infinity data.use_cooldown
data modify storage cartographer_custom_enchantments:infinity data.item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:infinity data.use_remainder

data modify storage cartographer_custom_enchantments:infinity data.item.components.minecraft:custom_data.item_replaced set value 1b

data modify block 4206899 0 4206900 Items set value []
data modify block 4206899 0 4206900 Items append from storage cartographer_custom_enchantments:infinity data.item

$loot replace entity @s weapon.$(slot) 1 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.suppress_inv_update