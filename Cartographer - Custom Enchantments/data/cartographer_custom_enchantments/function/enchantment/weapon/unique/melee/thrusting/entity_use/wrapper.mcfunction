scoreboard players set $check_target ca.ench_thrusting_lvl 0
execute on target run scoreboard players set $check_target ca.ench_thrusting_lvl 1

execute if score $check_target ca.ench_thrusting_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/entity_use/start