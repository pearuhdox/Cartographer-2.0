$tag $(owner) add ca.potion_owner

$execute positioned ~-$(half_radius) ~-1 ~-$(half_radius) as @e[dx=$(radius1),dy=1,dz=$(radius1),type=!marker,type=!item,type=!#cartographer_core:potions,tag=!ca.potion_owner,type=!experience_orb] unless entity @s[type=!player,type=!#cartographer_core:affected_by_carto] at @s run function cartographer_custom_enchantments:system/potion_landed/apply_enchant

$tag $(owner) remove ca.potion_owner