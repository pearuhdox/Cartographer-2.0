function cartographer_custom_enchantments:enchantment/passive/quake/custom_statuses/check_allow_status
execute if score $allow_statuses ca.ench_quake_lvl matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/quake/custom_statuses/status_player
execute if score $allow_statuses ca.ench_quake_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/quake/custom_statuses/status_mob

function cartographer_custom_enchantments:enchantment/passive/quake/charge_location
