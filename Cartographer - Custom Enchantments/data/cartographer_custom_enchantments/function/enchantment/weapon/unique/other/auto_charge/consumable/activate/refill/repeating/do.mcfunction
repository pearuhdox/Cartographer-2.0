playsound minecraft:entity.ender_eye.death player @s ~ ~ ~ 0.75 1.7
scoreboard players set $use_partial_ct ca.ench_auto_charge_slot 0


execute store result score $use_reload_per ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.auto_charge_uses_per_reload
execute if score $use_reload_per ca.ench_auto_charge_slot matches 0 run scoreboard players set $use_reload_per ca.ench_auto_charge_slot 1


scoreboard players operation $current_use_count ca.ench_auto_charge_slot += $use_reload_per ca.ench_auto_charge_slot
scoreboard players operation $current_use_count ca.ench_auto_charge_slot < $allowed_use_count ca.ench_auto_charge_slot
execute if score $use_reload_per ca.ench_auto_charge_slot matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/consumable/activate/refill/repeating/partial