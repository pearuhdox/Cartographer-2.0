execute if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/attack

scoreboard players set $used_momentum ca.momentum_stack 0
execute if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/user

scoreboard players set $vengeance_damage ca.vengeance_stack 0
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack = @s ca.ench_vengeance_lvl
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack *= $2 ca.CONSTANT

scoreboard players set $check ca.gravity_var 0
scoreboard players set $damage ca.gravity_var 0
execute if score @s ca.ench_gravity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/test
execute if score $check ca.gravity_var matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/user
