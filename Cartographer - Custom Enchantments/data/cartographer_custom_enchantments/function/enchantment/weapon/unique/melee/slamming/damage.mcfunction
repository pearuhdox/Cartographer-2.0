$damage @s $(damage) minecraft:player_attack by @p[tag=ca.slamming_owner]


function cartographer_custom_statuses:apply_status/apply/set_target

execute if score $allow_statuses_target ca.ench_slamming_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_slamming_lvl matches 1.. on attacker if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/custom_statuses/status_self_player
execute if score $allow_statuses_self ca.ench_slamming_lvl matches 1.. on attacker unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/custom_statuses/status_self_mob
