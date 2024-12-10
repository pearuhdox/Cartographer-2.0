scoreboard players remove @s ca.raycast 1

#particle minecraft:dust{color:[0.0,0.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 1 force

# -.25 0.75 -0.75 0.25 -.35 0.65 -.65 0.35

scoreboard players set $hit_tag ca.ench_var 0
execute on origin run tag @s add ca.arrow_owner
$execute unless entity @s[tag=ca.disabled_arrow] positioned ~$(x_step) ~$(y_step) ~$(z_step) positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#cartographer_core:affected_by_carto,tag=!ca.bypass_hit,dx=0,dy=0,dz=0] at @s run function cartographer_custom_enchantments:system/projectile_bypass/hit
execute if score $hit_tag ca.ench_var matches 1.. run function cartographer_custom_enchantments:system/projectile_bypass/hit_proj
execute on origin run tag @s remove ca.arrow_owner

$execute unless block ~$(x_step) ~$(y_step) ~$(z_step) #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

$execute if score $hit ca.ench_var matches 1.. if score @s ca.raycast matches 0 if entity @s[tag=ca.update_position_projectile] positioned ~$(x_step) ~$(y_step) ~$(z_step) positioned ~ ~-0.15 ~ if block ~ ~ ~ #cartographer_core:can_raycast run tp @s ~$(x_step) ~$(y_step) ~$(z_step)

$execute if score @s ca.raycast matches 1.. positioned ~$(x_step) ~$(y_step) ~$(z_step) run function cartographer_custom_enchantments:system/projectile_bypass/raycast with storage cartographer:custom_enchantments