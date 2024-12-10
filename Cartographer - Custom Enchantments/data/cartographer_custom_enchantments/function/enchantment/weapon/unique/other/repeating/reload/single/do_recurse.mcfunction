data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver prepend from storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows[0]
data modify storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_quiver[0].count set value 1
data modify storage cartographer_custom_enchantments:repeating data.arrow_id set from storage cartographer_custom_enchantments:repeating data.arrows[0].id


execute store result score $arrow_ct ca.ench_repeating_lvl run data get storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows[0].count
execute store result storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows[0].count int 1 run scoreboard players remove $arrow_ct ca.ench_repeating_lvl 1
execute if score $arrow_ct ca.ench_repeating_lvl matches 0 run data remove storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows[0]

execute store result storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_ammo int 1 run scoreboard players add $current_ammo_amount ca.ench_repeating_lvl 1

scoreboard players remove $ammo_reload_per ca.ench_repeating_lvl 1
execute if score $ammo_reload_per ca.ench_repeating_lvl matches 1.. if score $current_ammo_amount ca.ench_repeating_lvl < $allowed_max_ammo ca.ench_repeating_lvl if data storage bbl:pldata sudo_root.working_data.cartographer.enchants.repeating.arrows[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/do_recurse