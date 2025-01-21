data modify storage cartographer:custom_enchantments custom_statuses set value {}
function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/custom_statuses/check_allow_status

$execute at @s anchored eyes positioned ^ ^ ^-1 positioned ^ ^ ^$(half_range) positioned ~-$(half_range) ~-2 ~-$(half_range) as @e[type=#cartographer_core:affected_by_carto,dx=$(range_1),dy=2,dz=$(range_1),limit=5,sort=nearest] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/damage with storage cartographer:custom_enchantments

