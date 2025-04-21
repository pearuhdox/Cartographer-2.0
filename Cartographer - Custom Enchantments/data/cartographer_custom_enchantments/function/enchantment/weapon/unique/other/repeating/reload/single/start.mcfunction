execute if entity @s[tag=ca.new_repeating_instance] store result score @s ca.repeating_avail_ammo run clear @s #cartographer_core:arrow 0


scoreboard players operation @s ca.repeating_max_ammo = @s ca.ench_repeating_lvl
scoreboard players add @s ca.repeating_max_ammo 1

data modify storage cartographer_custom_enchantments:repeating data.item set value {}
execute if entity @s[tag=ca.ench_repeating_main] run data modify storage cartographer_custom_enchantments:repeating data.item set from entity @s SelectedItem
execute unless entity @s[tag=ca.ench_repeating_main] run data modify storage cartographer_custom_enchantments:repeating data.item set from entity @s equipment.offhand

execute if entity @s[tag=ca.new_repeating_instance] if entity @s[tag=ca.ench_repeating_main] run tag @s add ca.repeating_reloading_main
execute if entity @s[tag=ca.new_repeating_instance] unless entity @s[tag=ca.ench_repeating_main] run tag @s add ca.repeating_reloading_offh

execute if entity @s[tag=ca.new_repeating_instance] run data modify storage cartographer_custom_enchantments:repeating data.arrows set value []
execute if entity @s[tag=ca.new_repeating_instance] run data modify storage cartographer_custom_enchantments:repeating data.arrow_id set value ""
execute if entity @s[tag=ca.new_repeating_instance] if score @s ca.repeating_avail_ammo matches 1.. run data modify storage cartographer_custom_enchantments:repeating data.arrows append from entity @s Inventory[{id:"minecraft:tipped_arrow"}]
execute if entity @s[tag=ca.new_repeating_instance] if score @s ca.repeating_avail_ammo matches 1.. run data modify storage cartographer_custom_enchantments:repeating data.arrows append from entity @s Inventory[{id:"minecraft:spectral_arrow"}]
execute if entity @s[tag=ca.new_repeating_instance] if score @s ca.repeating_avail_ammo matches 1.. run data modify storage cartographer_custom_enchantments:repeating data.arrows append from entity @s Inventory[{id:"minecraft:arrow"}]
execute if entity @s[tag=ca.new_repeating_instance] store result score @s ca.repeating_current_ammo run data get storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_ammo

execute if score @s ca.repeating_avail_ammo matches 1.. if score @s ca.repeating_current_ammo < @s ca.repeating_max_ammo run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/do

execute unless score @s ca.repeating_avail_ammo matches 1.. run return run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/replace
execute unless score @s ca.repeating_current_ammo < @s ca.repeating_max_ammo run return run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/replace
