scoreboard players remove $remaining_ammo ca.ench_repeating_lvl 1

data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_quiver append from storage cartographer_custom_enchantments:repeating mob_offhand

execute if score $remaining_ammo ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/full_quiver/recurse
