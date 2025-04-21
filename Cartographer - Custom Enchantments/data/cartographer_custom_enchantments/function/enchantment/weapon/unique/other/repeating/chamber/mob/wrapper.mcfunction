data modify storage cartographer_custom_enchantments:repeating return_item set value {}
data modify storage cartographer_custom_enchantments:repeating return_item set from entity @s equipment.mainhand

execute store result score $remaining_ammo ca.ench_repeating_lvl run data get storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_ammo
execute store result storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_ammo int 1 run scoreboard players remove $remaining_ammo ca.ench_repeating_lvl 1 

execute unless data storage cartographer_custom_enchantments:repeating return_item.components.minecraft:charged_projectiles[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/start