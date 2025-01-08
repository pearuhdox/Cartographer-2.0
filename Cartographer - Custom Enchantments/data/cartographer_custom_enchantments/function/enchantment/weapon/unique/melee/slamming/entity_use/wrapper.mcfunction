scoreboard players set $check_target ca.ench_slamming_lvl 0
execute on target run scoreboard players set $check_target ca.ench_slamming_lvl 1

execute if score $check_target ca.ench_slamming_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/entity_use/start