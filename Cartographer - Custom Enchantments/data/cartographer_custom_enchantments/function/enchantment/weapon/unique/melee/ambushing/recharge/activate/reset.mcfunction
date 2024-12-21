scoreboard players set $time_current ca.ench_ambushing_slot 0
execute store result storage cartographer_custom_enchantments:ambushing items[0].components.minecraft:custom_data.ambushing_cooldown int 1 run scoreboard players get $time_current ca.ench_ambushing_slot

execute if score $slot ca.ench_ambushing_slot matches -106 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/recharge/activate/return_offhand
execute if score $slot ca.ench_ambushing_slot matches 0..8 run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/recharge/activate/return with storage cartographer_custom_enchantments:ambushing macro