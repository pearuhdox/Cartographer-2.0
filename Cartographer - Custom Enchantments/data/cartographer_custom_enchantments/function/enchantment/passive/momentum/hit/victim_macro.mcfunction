$particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~ ~ 0.5 0.2 0.5 0 75 normal

execute on attacker run tag @s add ca.momentum_owner

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @n[tag=ca.momentum_owner]

execute unless entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=0.1..3] at @s run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/knockback with storage cartographer:custom_enchantments
execute if entity @s[type=player] as @a[distance=0.1..3] at @s run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/knockback with storage cartographer:custom_enchantments

execute on attacker run tag @s remove ca.momentum_owner
