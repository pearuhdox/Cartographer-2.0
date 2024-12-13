scoreboard players set $used_storm ca.storm_stack 0
execute if score @s ca.ench_storm_lvl matches 1.. run scoreboard players operation $storm ca.ench_value = @s ca.ench_storm_lvl
execute if score @s ca.ench_storm_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/hit/user

scoreboard players set $used_induction ca.induction_stack 0
execute if score @s ca.ench_induction_lvl matches 1.. run scoreboard players operation $induction ca.ench_value = @s ca.ench_induction_lvl
execute if score @s ca.ench_induction_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/hit/user
