scoreboard players set $check_target ca.ench_throwable_lvl 0
execute on target run scoreboard players set $check_target ca.ench_throwable_lvl 1

execute if score $check_target ca.ench_throwable_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/mob_ai with storage cartographer:custom_enchantments