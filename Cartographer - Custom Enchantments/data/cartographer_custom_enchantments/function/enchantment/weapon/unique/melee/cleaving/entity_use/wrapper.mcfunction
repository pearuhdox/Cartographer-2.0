scoreboard players set $check_target ca.ench_cleaving_lvl 0
execute on target run scoreboard players set $check_target ca.ench_cleaving_lvl 1

execute if score $check_target ca.ench_cleaving_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/entity_use/start