
data modify storage cartographer_custom_enchantments:auto_charge consumable set value {}
data modify storage cartographer_custom_enchantments:auto_charge consumable set from storage cartographer_custom_enchantments:auto_charge items[0]
data remove storage cartographer_custom_enchantments:auto_charge consumable.components.minecraft:use_cooldown
data remove storage cartographer_custom_enchantments:auto_charge consumable.components.minecraft:use_remainder

scoreboard players add $current_use_count ca.ench_auto_charge_slot 1
execute store result storage cartographer_custom_enchantments:auto_charge consumable.components.minecraft:custom_data.use_count int 1 run scoreboard players get $current_use_count ca.ench_auto_charge_slot


data modify storage cartographer_custom_enchantments:consumable data set value {}
data modify storage cartographer_custom_enchantments:consumable data.item set from storage cartographer_custom_enchantments:auto_charge consumable

#Copy Repeating Replace Code For Resetting Properly - Starts Here

#Set Use Max Parameter
execute store result score $use_max ca.ench_var run data get storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
scoreboard players add $use_max ca.ench_var 1

#Set Use Count Parameter
execute unless data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.use_count run scoreboard players operation $use_count ca.ench_var = $use_max ca.ench_var
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.use_count store result score $use_count ca.ench_var run data get storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.use_count

#Do Name Alterations
data modify storage cartographer_custom_enchantments:consumable visual.macro set string storage cartographer_custom_enchantments:consumable data.item.id 10
function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/consumable/set_name with storage cartographer_custom_enchantments:consumable visual

#Reduce Use Count Parameter On Item
scoreboard players remove $use_count ca.ench_var 1
execute store result storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.use_count int 1 run scoreboard players get $use_count ca.ench_var

#Set Use Cooldown Parameter
execute if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set from storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown
execute unless data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown run data modify storage cartographer_custom_enchantments:consumable data.use_cooldown set value {seconds:0.2,cooldown_group:"cartographer_consumable"}

#Set Use Remainder Parameter - If there are uses remaining
execute if score $use_count ca.ench_var matches 1.. run data modify storage cartographer_custom_enchantments:consumable data.use_remainder set from storage cartographer_custom_enchantments:consumable data.item

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_cooldown set from storage cartographer_custom_enchantments:consumable data.use_cooldown
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_remainder set from storage cartographer_custom_enchantments:consumable data.use_remainder
data remove storage cartographer_custom_enchantments:consumable data.item.components.minecraft:use_remainder.components.minecraft:custom_data.item_replaced
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:intangible_projectile set value {}

data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_data.item_replaced set value 1b

#Handle Last Use For Auto Charge and Scavenger (Inert Items)
execute if score $use_count ca.ench_var matches 0 if data storage cartographer_custom_enchantments:consumable data.item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/auto_charge run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/consumable/inert_auto_charge


#END OF REPLACE CODE
data modify storage cartographer_custom_enchantments:auto_charge items[0] set value {}
data modify storage cartographer_custom_enchantments:auto_charge items[0] set from storage cartographer_custom_enchantments:consumable data.item

scoreboard players remove $use_reload_per ca.ench_auto_charge_slot 1