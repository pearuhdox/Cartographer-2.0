execute store result score $soulbound ca.register run data get entity @s Item.components.minecraft:enchantments.cartographer_custom_enchantments:passive/soulbound
execute store result score $shattering ca.register run data get entity @s Item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/shattering
execute store result score $haunting ca.register run data get entity @s Item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/haunting

execute if score $soulbound ca.register matches 1.. run function cartographer_custom_enchantments:enchantment/passive/soulbound/setup_event

execute if score $shattering ca.register matches 1.. run function cartographer_custom_enchantments:enchantment/curse/shattering/modify

execute if score $haunting ca.register matches 1.. run function cartographer_custom_enchantments:enchantment/curse/haunting/start