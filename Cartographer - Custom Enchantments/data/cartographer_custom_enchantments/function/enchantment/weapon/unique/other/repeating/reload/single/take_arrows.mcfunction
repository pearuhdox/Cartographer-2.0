execute store result score @s ca.repeating_avail_ammo run clear @s #cartographer_core:arrow 0
execute store result score $ammo_taken ca.repeating_avail_ammo run data get storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver

data modify storage cartographer_custom_enchantments:repeating data.arrow_clear set value {}
data modify storage cartographer_custom_enchantments:repeating data.arrow_clear set from storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver

data modify storage cartographer_custom_enchantments:repeating data.arrow_clear_value set value {}
data modify storage cartographer_custom_enchantments:repeating data.arrow_clear_value set from storage cartographer_custom_enchantments:repeating data.arrow_clear[0]

execute if data storage cartographer_custom_enchantments:repeating data.arrow_clear[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/take_arrow_iterate with storage cartographer_custom_enchantments:repeating data.arrow_clear_value