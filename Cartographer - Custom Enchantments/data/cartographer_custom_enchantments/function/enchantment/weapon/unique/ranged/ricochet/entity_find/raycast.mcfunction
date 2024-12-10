scoreboard players remove @s ca.raycast 1

particle minecraft:dust{color:[0.6,1.0,0.6],scale:1} ~ ~ ~ 0 0 0 1 1 force

execute on origin run tag @s add ca.ricochet_owner
execute if entity @s[tag=ca.allow_damage] as @e[type=#cartographer_core:affected_by_carto,dx=0,dy=0,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[type=#cartographer_core:affected_by_carto,dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/entity_find/hit with storage cartographer_custom_enchantments:ricochet
execute if entity @s[tag=ca.allow_damage] if score $hit ca.ench_ricochet_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/entity_find/hit_proj with storage cartographer_custom_enchantments:ricochet
execute on origin run tag @s remove ca.ricochet_owner

$execute unless block ~$(x_step_invert) ~$(y_step_invert) ~$(z_step_invert) #cartographer_core:can_raycast positioned ~$(x_step) ~$(y_step) ~$(z_step) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/find_block_face/start
$execute unless block ~$(x_step_invert) ~$(y_step_invert) ~$(z_step_invert) #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 15


$execute if score @s ca.raycast matches 1.. positioned ~$(x_step_invert) ~$(y_step_invert) ~$(z_step_invert) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ricochet/entity_find/raycast with storage cartographer_custom_enchantments:ricochet