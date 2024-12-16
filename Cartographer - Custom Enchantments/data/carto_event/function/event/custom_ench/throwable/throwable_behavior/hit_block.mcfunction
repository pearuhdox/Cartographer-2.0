execute unless score @s ca.ench_ricochet_lvl matches 1.. if block ~ ~ ~ target run tag @s add ca.throwable_hit_target_block
execute unless score @s ca.ench_ricochet_lvl matches 1.. if block ~ ~ ~ target run setblock ~ ~ ~ redstone_block replace

execute unless score @s ca.ench_ricochet_lvl matches 1.. run tag @s add ca.hit_block

execute if score @s ca.ench_collapse_lvl matches 1.. unless score @s ca.ench_ricochet_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/collapse/start
execute if score @s ca.ench_ricochet_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/ricochet/find_block_face/start

scoreboard players set @s ca.raycast 0

execute if entity @s[tag=ca.hit_block] run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=ca.hit_block] run playsound minecraft:item.trident.hit_ground player @a[distance=..16] ~ ~ ~ 0.75 0.7

$execute as $(owner) at @s run function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

scoreboard players operation $grappling ca.ench_value = @s ca.ench_grappling_lvl

execute if score @s ca.ench_grappling_lvl matches 1.. unless entity @s[tag=ca.has_custom_status_grounded] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate with storage cartographer:custom_enchantments