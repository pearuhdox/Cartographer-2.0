scoreboard players add @s ca.repeating_reload_time 1

execute unless score @s ca.repeating_load_time matches 1.. run scoreboard players set @s ca.repeating_load_time 5

execute if score @s ca.repeating_reload_time >= @s ca.repeating_load_time run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/start


#scoreboard players set $loaded ca.ench_repeating_lvl 0
#execute if entity @s[tag=ca.repeating_reloading_main] store result score $loaded ca.ench_repeating_lvl run data get entity @s SelectedItem.components.minecraft:charged_projectiles[0].count
#execute if entity @s[tag=ca.repeating_reloading_offh] store result score $loaded ca.ench_repeating_lvl run data get entity @s equipment.offhand.components.minecraft:charged_projectiles[0].count
#execute if score $loaded ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/replace