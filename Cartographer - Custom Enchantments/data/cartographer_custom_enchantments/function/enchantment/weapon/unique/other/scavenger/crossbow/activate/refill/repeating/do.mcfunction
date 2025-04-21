playsound minecraft:item.crossbow.loading_end player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.note_block.hat player @a[distance=..16] ~ ~ ~ 0.75 1.5
scoreboard players set $arrow_partial_ct ca.ench_scavenger_slot 0

execute store result score $ammo_reload_per ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_arrows_per_reload
execute if score $ammo_reload_per ca.ench_scavenger_slot matches 0 run scoreboard players set $ammo_reload_per ca.ench_scavenger_slot 1

function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/crossbow/activate/refill/repeating/do_recurse


function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/crossbow/activate/refill/repeating/replace
