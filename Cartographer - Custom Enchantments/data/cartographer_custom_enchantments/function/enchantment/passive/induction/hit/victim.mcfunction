scoreboard players set $is_player ca.ench_induction_lvl 0
execute on attacker if entity @s[type=player] run scoreboard players set $is_player ca.ench_induction_lvl 1

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/induction/create_bolt_attacker

function cartographer_custom_enchantments:enchantment/passive/induction/create_bolt