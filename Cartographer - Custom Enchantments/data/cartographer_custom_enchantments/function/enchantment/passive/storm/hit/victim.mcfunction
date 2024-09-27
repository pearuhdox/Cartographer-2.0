scoreboard players set $is_player ca.ench_storm_lvl 0
execute on attacker if entity @s[type=player] run scoreboard players set $is_player ca.ench_storm_lvl 1

function cartographer_custom_enchantments:enchantment/passive/storm/get_position

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/storm/create_storm