scoreboard players set $total_time ca.throwable_cooldown 14
scoreboard players operation $time_left ca.throwable_cooldown = @s ca.ench_throwable_lvl

scoreboard players operation $total_time ca.throwable_cooldown -= $time_left ca.throwable_cooldown
scoreboard players operation @s ca.throwable_cooldown = $total_time ca.throwable_cooldown

execute summon text_display run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/create_telegraphing
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/mob_ai_macro with storage cartographer:custom_enchantments