execute store result score $pot_land_radius ca.attr_apply_var run data get storage cartographer:custom_attributes active_projectile.radius 10
execute store result score $pot_land_damage ca.attr_apply_var run data get storage cartographer:custom_attributes active_projectile.damage 10

$tag $(owner) add ca.potion_owner

$execute if score $pot_land_damage ca.attr_apply_var matches 1.. positioned ~-$(half_radius) ~-1 ~-$(half_radius) as @e[dx=$(radius1),dy=1,dz=$(radius1),type=!item,type=!marker,type=!#cartographer_core:potions,tag=!ca.potion_owner] at @s run function cartographer_custom_attributes:system/potion_landed/damage with storage cartographer:custom_attributes active_projectile
execute if score $pot_land_damage ca.attr_apply_var matches 1.. if score $pot_land_radius ca.attr_apply_var matches 45.. run function cartographer_custom_attributes:system/potion_landed/damage_vfx with storage cartographer:custom_attributes active_projectile


$tag $(owner) remove ca.potion_owner