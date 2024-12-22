$execute if entity @s[type=player] run damage @s $(damage) minecraft:mob_attack by @n[tag=ca.riposte_owner]
$execute unless entity @s[type=player] run damage @s $(damage) minecraft:player_attack by @n[tag=ca.riposte_owner]
execute unless entity @s[type=player] run damage @s 0.01 cartographer_custom_enchantments:enchant_damage_bypass

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_riposte_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/custom_statuses/status_target