playsound minecraft:item.crossbow.loading_end player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.75 1.5
scoreboard players set $arrow_partial_ct ca.ench_repeating_lvl 0


execute store result score $ammo_reload_per ca.ench_repeating_lvl run data get storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_arrows_per_partial_reload
execute if score $ammo_reload_per ca.ench_repeating_lvl matches 0 run scoreboard players set $ammo_reload_per ca.ench_repeating_lvl 1

function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/partial/do_recurse

function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/partial/replace
