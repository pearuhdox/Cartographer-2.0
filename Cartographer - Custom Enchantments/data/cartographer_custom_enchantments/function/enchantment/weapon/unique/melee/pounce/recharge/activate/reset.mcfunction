scoreboard players set $time_current ca.ench_pounce_lvl 0
execute store result storage cartographer_custom_enchantments:pounce items[0].components.minecraft:custom_data.pounce_cooldown int 1 run scoreboard players get $time_current ca.ench_pounce_lvl

execute if score $slot ca.ench_pounce_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/return_offhand
execute if score $slot ca.ench_pounce_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/pounce/recharge/activate/return with storage cartographer_custom_enchantments:pounce macro