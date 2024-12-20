execute on attacker run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/custom_statuses/check_allow_status

$execute if entity @s[type=player] as @a[distance=..$(range)] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/damage with storage cartographer:custom_enchantments
$execute unless entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=..$(range)] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/damage with storage cartographer:custom_enchantments

execute if entity @s[type=player] positioned ~ ~1 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/vfx with storage cartographer:custom_enchantments
execute unless entity @s[type=player] positioned ~ ~1 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/vfx_mob with storage cartographer:custom_enchantments