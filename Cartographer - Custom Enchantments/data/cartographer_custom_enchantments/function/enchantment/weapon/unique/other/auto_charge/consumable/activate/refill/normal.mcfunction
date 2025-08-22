data modify storage cartographer_custom_enchantments:auto_charge consumable set value {}
data modify storage cartographer_custom_enchantments:auto_charge consumable set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:use_remainder
data remove storage cartographer_custom_enchantments:auto_charge consumable.components.minecraft:use_cooldown
data remove storage cartographer_custom_enchantments:auto_charge consumable.components.minecraft:use_remainder
data modify storage cartographer_custom_enchantments:auto_charge consumable.components.minecraft:custom_data.use_count set value 0



data modify storage cartographer_custom_enchantments:consumable data set value {}
data modify storage cartographer_custom_enchantments:consumable data.item set from storage cartographer_custom_enchantments:auto_charge consumable

#START OF COPIED REPLACE CODE

#Set Use Cooldown Parameter
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set from storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown
execute unless data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set value {seconds:0.2,cooldown_group:"cartographer_consumable"}

#Set Use Remainder Parameter
data modify storage cartographer_custom_enchantments:consumable data.use_remainder_next set from storage cartographer_custom_enchantments:auto_charge consumable

#Setup Inert Item Object For Use Remainder
data modify storage cartographer_custom_enchantments:consumable data.inert_item set value {components:{"minecraft:custom_name":{"color":"#CEA8FF","fallback":"Inert Item","italic":false,"translate":"carto_translate_wip"},"minecraft:enchantments":{"cartographer_custom_enchantments:weapon/unique/other/auto_charge":1},"minecraft:lore":[" ",{"color":"gray","fallback":"An item that is temporarily","italic":false,"translate":"carto_translate_wip"},{"color":"gray","fallback":"useless from Auto Charge.","italic":false,"translate":"carto_translate_wip"}]},count:1,id:"minecraft:firework_star"}
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.use_remainder_next
data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:custom_data.item_replaced set value 1b

execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound run data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound set value 1
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting run data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting set value 1
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.minecraft:vanishing_curse run data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:enchantments.minecraft:vanishing_curse set value 1

data modify storage cartographer_custom_enchantments:consumable data.inert_item.components.minecraft:use_remainder.components.minecraft:custom_data.auto_charge_tracker set value 0

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.inert_item
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:intangible_projectile set value {}

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.item_replaced set value 1b


#END OF COPIED REPLACE CODE
data modify storage cartographer_custom_enchantments:auto_charge items[0] set value {}
data modify storage cartographer_custom_enchantments:auto_charge items[0] set from storage cartographer_custom_enchantments:consumable data.item

playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.75 0.85
