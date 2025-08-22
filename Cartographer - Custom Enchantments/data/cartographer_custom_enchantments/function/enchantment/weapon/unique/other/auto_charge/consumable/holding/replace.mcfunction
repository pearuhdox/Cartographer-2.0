scoreboard players set $inf_mainhand ca.ench_var 0
scoreboard players set $inf_offhand ca.ench_var 0
$scoreboard players set $inf_$(slot) ca.ench_var 1

data modify storage cartographer_custom_enchantments:consumable data set value {}
execute if score $inf_mainhand ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:consumable data.item set from entity @s SelectedItem
execute if score $inf_offhand ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:consumable data.item set from entity @s equipment.offhand

data remove storage cartographer_custom_enchantments:consumable data.item.Slot

data modify storage cartographer_custom_enchantments:consumable data.item.count set value 1
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:max_stack_size set value 1
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:intangible_projectile set value {}

#Set Use Cooldown Parameter
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set from storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown
execute unless data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set value {seconds:0.2,cooldown_group:"cartographer_consumable"}

#Set Use Remainder Parameter
data modify storage cartographer_custom_enchantments:consumable data.use_remainder_next set from storage cartographer_custom_enchantments:consumable data.item

#Setup Inert Item Object For Use Remainder
data modify storage cartographer_custom_enchantments:consumable data.inert_item set value {components:{"minecraft:max_stack_size":1,"minecraft:custom_name":{"color":"#CEA8FF","fallback":"Inert Item","italic":false,"translate":"carto_translate_wip"},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/other/auto_charge":1},"minecraft:lore":[" ",{"color":"gray","fallback":"An item that is temporarily","italic":false,"translate":"carto_translate_wip"},{"color":"gray","fallback":"useless from Auto Charge.","italic":false,"translate":"carto_translate_wip"}]},count:1,id:"minecraft:firework_star"}
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.use_remainder_next
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:custom_data.item_replaced set value 1b

execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound run data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound set value 1
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting run data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting set value 1
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.minecraft:vanishing_curse run data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:enchantments.minecraft:vanishing_curse set value 1

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.inert_item
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:intangible_projectile set value {}

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.item_replaced set value 1b


data modify block 4206899 0 4206900 Items set value []
data modify block 4206899 0 4206900 Items append from storage cartographer_custom_enchantments:consumable data.item

$loot replace entity @s weapon.$(slot) 1 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.suppress_inv_update