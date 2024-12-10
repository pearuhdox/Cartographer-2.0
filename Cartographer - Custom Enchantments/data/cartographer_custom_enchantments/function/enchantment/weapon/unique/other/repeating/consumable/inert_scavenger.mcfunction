#Set Use Remainder Parameter
data modify storage cartographer_custom_enchantments:consumable data.use_remainder_next set from storage cartographer_custom_enchantments:consumable data.item

#Setup Inert Item Object For Use Remainder
data modify storage cartographer_custom_enchantments:consumable data.inert_item set value {components:{"minecraft:custom_name":'{"color":"#CEA8FF","fallback":"Inert Item","italic":false,"translate":"carto_translate_wip"}',"minecraft:enchantments":{levels:{"cartographer_custom_enchantments:weapon/unique/other/scavenger":1}},"minecraft:lore":['" "','{"color":"gray","fallback":"An item that is temporarily","italic":false,"translate":"carto_translate_wip"}','{"color":"gray","fallback":"useless from Scavenger.","italic":false,"translate":"carto_translate_wip"}']},count:1,id:"minecraft:firework_star"}
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.use_remainder_next
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_remainder.components.minecraft:custom_data.scavenger_tracker set value 0
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:custom_data.item_replaced set value 1b

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.inert_item
