scoreboard players set $time_current ca.ench_lunging_lvl 0
execute store result storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_cooldown int 1 run scoreboard players get $time_current ca.ench_lunging_lvl

execute if score $slot ca.ench_lunging_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/return_offhand
execute if score $slot ca.ench_lunging_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/return with storage cartographer_custom_enchantments:lunging macro