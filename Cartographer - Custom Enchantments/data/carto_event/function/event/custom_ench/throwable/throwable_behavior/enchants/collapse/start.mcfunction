function carto_event:event/custom_ench/throwable/throwable_behavior/return_enchants

data modify storage cartographer:custom_enchantments owner set from storage carto_event current[-1].parameters.owner

scoreboard players set $break_time ca.ench_collapse_lvl 3000
scoreboard players operation $break_speed ca.ench_collapse_lvl = @s ca.collapse_break_speed
scoreboard players operation $break_speed ca.ench_collapse_lvl /= $2 ca.CONSTANT
scoreboard players operation $break_time ca.ench_collapse_lvl /= $break_speed ca.ench_collapse_lvl

scoreboard players operation $break_time ca.ench_collapse_lvl /= $10 ca.CONSTANT

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:spawner run scoreboard players operation $break_time ca.ench_collapse_lvl *= $2 ca.CONSTANT
execute if score $break_time ca.ench_collapse_lvl matches ..4 run scoreboard players set $break_time ca.ench_collapse_lvl 5


scoreboard players operation $visual_time ca.ench_collapse_lvl = $break_time ca.ench_collapse_lvl
scoreboard players remove $visual_time ca.ench_collapse_lvl 10
execute if score $visual_time ca.ench_collapse_lvl matches ..1 run scoreboard players set $visual_time ca.ench_collapse_lvl 2


execute store result storage cartographer:custom_enchantments time int 1 run scoreboard players get $break_time ca.ench_collapse_lvl
execute store result storage cartographer:custom_enchantments visual_time int 1 run scoreboard players get $visual_time ca.ench_collapse_lvl

function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #cartographer_custom_enchantments:immune_to_collapse summon item_display run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/create_entity with storage cartographer:custom_enchantments

#execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~ ~ 0 0 0 1 1 force

scoreboard players set @s ca.raycast 0