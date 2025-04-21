#cartographer_custom_enchantments:auto_charge items[0]
execute store result score $current_ammo_amount ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_ammo

execute store result score $allowed_max_ammo ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
scoreboard players add $allowed_max_ammo ca.ench_auto_charge_slot 1

data modify storage cartographer_custom_enchantments:repeating data.arrows set value [{id:"minecraft:arrow",count:64,components:{"minecraft:intangible_projectile":{}}}]
data modify storage cartographer_custom_enchantments:repeating data.arrow_id set value "minecraft:arrow"

execute if score $current_ammo_amount ca.ench_auto_charge_slot < $allowed_max_ammo ca.ench_auto_charge_slot run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/refill/repeating/do