scoreboard players set $time_current ca.ench_quick_strike_lvl 0
execute store result storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_cooldown int 1 run scoreboard players get $time_current ca.ench_quick_strike_lvl

execute if score $slot ca.ench_quick_strike_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/return_offhand
execute if score $slot ca.ench_quick_strike_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/recharge/activate/return with storage cartographer_custom_enchantments:quick_strike macro