execute unless score @s ca.ench_ricochet_lvl matches 1.. run tag @s add ca.hit_block

execute if score @s ca.ench_collapse_lvl matches 1.. unless score @s ca.ench_ricochet_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/collapse/start
execute if score @s ca.ench_ricochet_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/find_block_face/start

scoreboard players set @s ca.raycast 0

execute if entity @s[tag=ca.hit_block] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=ca.hit_block] run playsound minecraft:item.trident.hit_ground player @a[distance=..16] ~ ~ ~ 0.75 0.7
