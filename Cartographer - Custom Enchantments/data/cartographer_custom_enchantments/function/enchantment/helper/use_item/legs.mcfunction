execute if score @s ca.ench_regret_legs_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_legs_lvl matches 1.. run tag @s add ca.used_regret_legs

execute if score @s ca.ench_gluttony_legs_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_legs_lvl matches 1.. run tag @s add ca.used_gluttony_legs

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/legs
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/legs