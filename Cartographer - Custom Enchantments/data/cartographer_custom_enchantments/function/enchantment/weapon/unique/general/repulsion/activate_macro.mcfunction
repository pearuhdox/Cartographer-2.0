function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/custom_statuses/check_allow_status

$execute if entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=..$(range)] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/do_push_mob with storage cartographer:custom_enchantments
$execute unless entity @s[type=player] as @a[distance=..$(range)] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/do_push_player with storage cartographer:custom_enchantments

execute if score $hits ca.ench_repulsion_lvl matches 1.. if entity @s[type=player] positioned ~ ~0.65 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/vfx with storage cartographer:custom_enchantments
execute unless entity @s[type=player] positioned ~ ~0.65 ~ run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/vfx_mob with storage cartographer:custom_enchantments