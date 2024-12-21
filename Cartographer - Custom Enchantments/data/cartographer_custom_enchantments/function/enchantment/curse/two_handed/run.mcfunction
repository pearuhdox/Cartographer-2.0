#Reset All Tags

#Do Player Check
execute if score @s ca.ench_two_handed_check matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/curse/two_handed/check_player

#Do Mob Check
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_custom_enchantments:enchantment/curse/two_handed/check_entity

execute if score @s ca.ench_two_handed_check matches 1.. run scoreboard players remove @s ca.ench_two_handed_check 1