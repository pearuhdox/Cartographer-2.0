function bb:lib/pldata/read

playsound minecraft:item.crossbow.loading_end player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.75 1.5

execute if entity @s[tag=ca.new_repeating_instance] run data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item set from storage cartographer_custom_enchantments:repeating data.item
execute if entity @s[tag=ca.new_repeating_instance] run data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver set value []
execute if entity @s[tag=ca.new_repeating_instance] run data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows set from storage cartographer_custom_enchantments:repeating data.arrows
tag @s remove ca.new_repeating_instance

execute store result score $ammo_reload_per ca.ench_repeating_lvl run data get storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_arrows_per_reload
execute if score $ammo_reload_per ca.ench_repeating_lvl matches 0 run scoreboard players set $ammo_reload_per ca.ench_repeating_lvl 1

function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/do_recurse

function bb:lib/pldata/write

scoreboard players set @s ca.repeating_reload_time 0

scoreboard players remove @s ca.repeating_avail_ammo 1