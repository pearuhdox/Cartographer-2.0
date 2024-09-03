scoreboard players set $check ca.gravity_var 0
scoreboard players set $damage ca.gravity_var 0
execute if score @s ca.ench_gravity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/test
execute if score $check ca.gravity_var matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/user