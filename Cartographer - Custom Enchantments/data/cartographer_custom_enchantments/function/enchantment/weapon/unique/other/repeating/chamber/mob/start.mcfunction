execute if score $remaining_ammo ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/quiver

execute unless score $remaining_ammo ca.ench_repeating_lvl matches 1.. run data remove storage cartographer_custom_enchantments:repeating return_item.components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating_mob_helper
execute unless score $remaining_ammo ca.ench_repeating_lvl matches 1.. run playsound minecraft:block.copper_door.close hostile @a[distance=..16] ~ ~ ~ 1.25 0.5

data modify entity @s equipment.mainhand set from storage cartographer_custom_enchantments:repeating return_item