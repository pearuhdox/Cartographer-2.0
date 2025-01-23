execute on attacker run function cartographer_custom_statuses:apply_status/apply/set_target

tag @s add ca.thorns_owner
execute on attacker if entity @s[type=!player] run function cartographer_custom_enchantments:enchantment/passive/thorns/mob_knockback

function cartographer_custom_enchantments:enchantment/passive/thorns/custom_statuses/check_allow_status

execute if score $allow_statuses_target ca.ench_thorns_lvl matches 1.. on attacker run function cartographer_custom_enchantments:enchantment/passive/thorns/custom_statuses/status_target

execute if score $allow_statuses_self ca.ench_thorns_lvl matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/thorns/custom_statuses/status_self_player
execute if score $allow_statuses_self ca.ench_thorns_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/thorns/custom_statuses/status_self_mob
tag @s remove ca.thorns_owner
