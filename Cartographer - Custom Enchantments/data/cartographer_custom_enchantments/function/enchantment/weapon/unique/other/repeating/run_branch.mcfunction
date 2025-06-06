execute if entity @s[type=player] run tag @s remove ca.ench_repeating_main
execute if entity @s[type=player] run tag @s remove ca.ench_repeating_offh

scoreboard players set $was_main ca.calc_type 0
scoreboard players set $was_offh ca.calc_type 0

execute if entity @s[type=player] if score @s ca.ench_repeating_main_lvl matches 1.. run scoreboard players set $was_main ca.calc_type 1
execute if entity @s[type=player] if score @s ca.ench_repeating_offh_lvl matches 1.. unless score @s ca.ench_repeating_main_lvl matches 1.. run scoreboard players set $was_offh ca.calc_type 1

execute if entity @s[type=player] if score $was_main ca.calc_type matches 1.. run tag @s add ca.ench_repeating_main
execute if entity @s[type=player] if score $was_offh ca.calc_type matches 1.. run tag @s add ca.ench_repeating_offh

execute if entity @s[type=player] if score $was_main ca.calc_type matches 1.. store result score @s ca.repeating_load_time run data get entity @s SelectedItem.components.minecraft:custom_data.repeating_load_tick_time
execute if entity @s[type=player] if score $was_offh ca.calc_type matches 1.. store result score @s ca.repeating_load_time run data get entity @s equipment.offhand.components.minecraft:custom_data.repeating_load_tick_time

execute if entity @s[type=player] if entity @s[tag=ca.ench_repeating_main] store result score @s ca.repeating_ammo run data get entity @s SelectedItem.components.minecraft:custom_data.repeating_ammo
execute if entity @s[type=player] if entity @s[tag=ca.ench_repeating_offh] store result score @s ca.repeating_ammo run data get entity @s equipment.offhand.components.minecraft:custom_data.repeating_ammo

execute if entity @s[type=player] unless score @s ca.repeating_ammo matches 1.. if score @s ca.load_crossbow_time matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/test_can_load
execute if entity @s[type=player] if entity @s[tag=ca.repeating_loaded_arrow] unless score @s ca.repeating_ammo matches 1.. unless score @s ca.load_crossbow_time matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/replace

execute if entity @s[type=player] if score @s ca.repeating_ammo matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/item/wrapper

execute if entity @s[type=player] if score @s ca.repeating_reload_cdl matches 1.. run scoreboard players remove @s ca.repeating_reload_cdl 1


# MOB MECHANICS
execute unless entity @s[type=player] store result score @s ca.repeating_ammo run data get entity @s equipment.mainhand.components.minecraft:custom_data.repeating_ammo
execute unless entity @s[type=player] unless score @s ca.repeating_ammo matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/full_quiver/test
execute unless entity @s[type=player] if score @s ca.repeating_ammo matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/wrapper
