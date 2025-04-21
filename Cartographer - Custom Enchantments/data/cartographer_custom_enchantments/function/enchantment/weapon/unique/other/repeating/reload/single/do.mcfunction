function cartographer_core:pldata/read

playsound minecraft:item.crossbow.loading_end player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.75 1.5

execute if entity @s[tag=ca.new_repeating_instance] run data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item set value {}
execute if entity @s[tag=ca.new_repeating_instance] run data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item set from storage cartographer_custom_enchantments:repeating data.item
execute if entity @s[tag=ca.new_repeating_instance] run data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver set value []
execute if entity @s[tag=ca.new_repeating_instance] run data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.arrows set from storage cartographer_custom_enchantments:repeating data.arrows
tag @s remove ca.new_repeating_instance

execute store result score $ammo_reload_per ca.ench_repeating_lvl run data get storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_arrows_per_reload
execute if score $ammo_reload_per ca.ench_repeating_lvl matches 0 run scoreboard players set $ammo_reload_per ca.ench_repeating_lvl 1


scoreboard players set $has_infinity ca.ench_repeating_lvl 0
execute if data storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:enchantments.minecraft:infinity run scoreboard players set $has_infinity ca.ench_repeating_lvl 1

function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/do_recurse

function cartographer_core:pldata/write

scoreboard players set @s ca.repeating_reload_time 0

tag @s add ca.repeating_loaded_arrow