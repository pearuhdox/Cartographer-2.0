playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 1.5 0.85

scoreboard players set $use_partial_ct ca.ench_scavenger_slot 0


execute store result score $use_reload_per ca.ench_scavenger_slot run data get storage cartographer_custom_enchantments:scavenger items[0].components.minecraft:custom_data.scavenger_uses_per_kill
execute if score $use_reload_per ca.ench_scavenger_slot matches 0 run scoreboard players set $use_reload_per ca.ench_scavenger_slot 1


scoreboard players operation $current_use_count ca.ench_scavenger_slot += $use_reload_per ca.ench_scavenger_slot
scoreboard players operation $current_use_count ca.ench_scavenger_slot < $allowed_use_count ca.ench_scavenger_slot
execute if score $use_reload_per ca.ench_scavenger_slot matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/consumable/activate/refill/repeating/partial