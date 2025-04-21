execute if score @s ca.ench_regret_head_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_head_lvl matches 1.. run tag @s add ca.used_regret_head

execute if score @s ca.ench_gluttony_head_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_head_lvl matches 1.. run tag @s add ca.used_gluttony_head

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/head
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/head