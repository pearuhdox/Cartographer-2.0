data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_quiver prepend from storage cartographer_custom_enchantments:repeating data.arrows[0]
data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_quiver[0].count set value 1
data modify storage cartographer_custom_enchantments:repeating data.arrow_id set from storage cartographer_custom_enchantments:repeating data.arrows[0].id
scoreboard players add $arrow_partial_ct ca.ench_auto_charge_slot 1

execute store result score $arrow_ct ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:repeating data.arrows[0].count
execute store result storage cartographer_custom_enchantments:repeating data.arrows[0].count int 1 run scoreboard players remove $arrow_ct ca.ench_auto_charge_slot 1
execute if score $arrow_ct ca.ench_auto_charge_slot matches 0 run data remove storage cartographer_custom_enchantments:repeating data.arrows[0]

execute store result storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_ammo int 1 run scoreboard players add $current_ammo_amount ca.ench_auto_charge_slot 1

scoreboard players remove $ammo_reload_per ca.ench_auto_charge_slot 1
execute if score $ammo_reload_per ca.ench_auto_charge_slot matches 1.. if score $current_ammo_amount ca.ench_auto_charge_slot < $allowed_max_ammo ca.ench_auto_charge_slot if data storage cartographer_custom_enchantments:repeating data.arrows[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/refill/repeating/do_recurse