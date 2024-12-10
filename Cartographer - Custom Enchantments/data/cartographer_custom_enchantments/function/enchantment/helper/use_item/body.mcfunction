execute if score @s ca.ench_body_regret_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_body_regret_lvl matches 1.. run tag @s add ca.used_regret_body

execute if score @s ca.ench_body_gluttony_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_body_gluttony_lvl matches 1.. run tag @s add ca.used_gluttony_body

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/body
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/body
