scoreboard players set $is_player ca.ench_storm_lvl 0
execute on attacker if entity @s[type=player] run scoreboard players set $is_player ca.ench_storm_lvl 1

function cartographer_custom_enchantments:enchantment/passive/storm/get_position

execute on attacker run function cartographer_custom_enchantments:enchantment/passive/storm/custom_statuses/check_allow_status
execute if score $allow_statuses ca.ench_storm_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/storm/custom_statuses/status_player
execute if score $allow_statuses ca.ench_storm_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/storm/custom_statuses/status_mob


execute on attacker run function cartographer_custom_enchantments:enchantment/passive/storm/create_storm