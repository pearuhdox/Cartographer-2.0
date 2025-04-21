data modify storage cartographer_custom_enchantments:repeating return_item set value {}
data modify storage cartographer_custom_enchantments:repeating return_item set from entity @s equipment.mainhand


execute if data storage cartographer_custom_enchantments:repeating return_item.components.minecraft:charged_projectiles[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/full_quiver/start
