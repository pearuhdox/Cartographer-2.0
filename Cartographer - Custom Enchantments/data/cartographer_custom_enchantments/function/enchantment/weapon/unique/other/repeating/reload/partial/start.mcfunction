execute store result score @s ca.repeating_avail_ammo run clear @s #cartographer_core:arrow 0

scoreboard players operation @s ca.repeating_max_ammo = @s ca.ench_repeating_lvl
scoreboard players add @s ca.repeating_max_ammo 1

data modify storage cartographer_custom_enchantments:repeating data.item set value {}
execute if entity @s[tag=ca.ench_repeating_main] run data modify storage cartographer_custom_enchantments:repeating data.item set from entity @s SelectedItem
execute unless entity @s[tag=ca.ench_repeating_main] run data modify storage cartographer_custom_enchantments:repeating data.item set from entity @s equipment.offhand

data modify storage cartographer_custom_enchantments:repeating data.arrows set value []
data modify storage cartographer_custom_enchantments:repeating data.arrow_id set value ""
execute if score @s ca.repeating_avail_ammo matches 1.. run data modify storage cartographer_custom_enchantments:repeating data.arrows append from entity @s Inventory[{id:"minecraft:tipped_arrow"}]
execute if score @s ca.repeating_avail_ammo matches 1.. run data modify storage cartographer_custom_enchantments:repeating data.arrows append from entity @s Inventory[{id:"minecraft:spectral_arrow"}]
execute if score @s ca.repeating_avail_ammo matches 1.. run data modify storage cartographer_custom_enchantments:repeating data.arrows append from entity @s Inventory[{id:"minecraft:arrow"}]
execute store result score @s ca.repeating_current_ammo run data get storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_ammo

execute if score @s ca.repeating_avail_ammo matches 1.. if score @s ca.repeating_current_ammo < @s ca.repeating_max_ammo run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/partial/do

scoreboard players remove @s ca.repeating_avail_ammo 1