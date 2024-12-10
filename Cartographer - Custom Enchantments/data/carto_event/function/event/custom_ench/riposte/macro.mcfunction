$execute if entity @s[type=player] run damage @s $(damage) minecraft:mob_attack by @n[tag=ca.riposte_owner]
$execute unless entity @s[type=player] run damage @s $(damage) minecraft:player_attack by @n[tag=ca.riposte_owner]
execute unless entity @s[type=player] run damage @s 0.01 cartographer_custom_enchantments:enchant_damage_bypass