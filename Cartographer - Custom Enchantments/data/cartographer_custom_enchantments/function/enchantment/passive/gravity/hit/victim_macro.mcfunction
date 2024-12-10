$particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~ ~ 0.5 0.2 0.5 0 75 normal

execute on attacker run tag @s add ca.gravity_owner

$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @n[tag=ca.gravity_owner]

execute unless entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=0.1..3] at @s run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/knockback
execute if entity @s[type=player] as @a[distance=0.1..3] at @s run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/knockback

execute on attacker run tag @s remove ca.gravity_owner
