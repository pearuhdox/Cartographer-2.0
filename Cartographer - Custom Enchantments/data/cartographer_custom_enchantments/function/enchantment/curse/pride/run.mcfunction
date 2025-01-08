#Reset All Tags

#Do Player Check
execute if entity @s[type=player] if score @s ca.ench_pride_check matches 1.. run function cartographer_custom_enchantments:enchantment/curse/pride/check

#Do Mob Check
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_custom_enchantments:enchantment/curse/pride/check