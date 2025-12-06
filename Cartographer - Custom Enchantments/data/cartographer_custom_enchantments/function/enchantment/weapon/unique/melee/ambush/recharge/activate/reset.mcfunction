scoreboard players set $time_current ca.ench_ambush_lvl 0
execute store result storage cartographer_custom_enchantments:ambush items[0].components.minecraft:custom_data.ambush_cooldown int 1 run scoreboard players get $time_current ca.ench_ambush_lvl

execute if score $slot ca.ench_ambush_lvl matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambush/recharge/activate/return_offhand
execute if score $slot ca.ench_ambush_lvl matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambush/recharge/activate/return with storage cartographer_custom_enchantments:ambush macro