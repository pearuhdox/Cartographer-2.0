scoreboard players operation $damage ca.ench_var = $rushdown ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

scoreboard players set $active ca.ench_leverage_lvl 0
execute on attacker if predicate bb:is_sprinting run scoreboard players set $active ca.ench_leverage_lvl 1

execute if score $active ca.ench_leverage_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/rushdown/damage with storage cartographer:custom_enchantments
