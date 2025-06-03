scoreboard players set $no_suppress ca.ench_lunging_lvl 0

execute store result score $slot ca.ench_lunging_lvl run data get storage cartographer_custom_enchantments:lunging items[0].Slot

execute if score $slot ca.ench_lunging_lvl matches -106..8 store result storage cartographer_custom_enchantments:lunging macro.slot int 1 run scoreboard players get $slot ca.ench_lunging_lvl
execute store result score $time_current ca.ench_lunging_lvl run data get storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_cooldown

execute if score $slot ca.ench_lunging_lvl matches -106..8 unless data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:charged_projectiles[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/start
#execute if score $time_current ca.ench_lunging_lvl matches 1.. if score $slot ca.ench_lunging_lvl matches -106..8 if data storage cartographer_custom_enchantments:lunging items[0].components.minecraft:charged_projectiles[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/activate/reset

data remove storage cartographer_custom_enchantments:lunging items[0]
execute if data storage cartographer_custom_enchantments:lunging items[0] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/recharge/iterate