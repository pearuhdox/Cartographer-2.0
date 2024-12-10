scoreboard players set $inf_mainhand ca.ench_var 0
scoreboard players set $inf_offhand ca.ench_var 0
$scoreboard players set $inf_$(slot) ca.ench_var 1

data modify storage cartographer_custom_enchantments:consumable data set value {}
execute if score $inf_mainhand ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:consumable data.item set from entity @s SelectedItem
execute if score $inf_offhand ca.ench_var matches 1 run data modify storage cartographer_custom_enchantments:consumable data.item set from entity @s Inventory[{Slot:-106b}]

data remove storage cartographer_custom_enchantments:consumable data.item.Slot

#Set Use Cooldown Parameter
execute store result score $use_cdl ca.ench_var run data get storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.use_cooldown 100
data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set value {seconds:0.2,cooldown_group:"cartographer_scavenger"}
execute if score $use_cdl ca.ench_var matches 1.. store result storage cartographer_custom_enchantments:consumable data.use_cooldown.seconds double 0.01 run scoreboard players get $use_cdl ca.ench_var

#Set Use Remainder Parameter
data modify storage cartographer_custom_enchantments:consumable data.use_remainder_next set from storage cartographer_custom_enchantments:consumable data.item

#Setup Inert Item Object For Use Remainder
data modify storage cartographer_custom_enchantments:consumable data.inert_item set value {components:{"minecraft:custom_name":'{"color":"#CEA8FF","fallback":"Inert Item","italic":false,"translate":"carto_translate_wip"}',"minecraft:enchantments":{levels:{"cartographer_custom_enchantments:weapon/unique/other/scavenger":1}},"minecraft:lore":['" "','{"color":"gray","fallback":"An item that is temporarily","italic":false,"translate":"carto_translate_wip"}','{"color":"gray","fallback":"useless from Scavenger.","italic":false,"translate":"carto_translate_wip"}']},count:1,id:"minecraft:firework_star"}
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.use_remainder_next
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:custom_data.item_replaced set value 1b

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.inert_item

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.item_replaced set value 1b

data modify block 4206899 0 4206900 Items set value []
data modify block 4206899 0 4206900 Items append from storage cartographer_custom_enchantments:consumable data.item

$loot replace entity @s weapon.$(slot) 1 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.suppress_inv_update