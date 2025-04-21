scoreboard players set $surge_hit ca.sprint_time_surge 0

tag @s add ca.surge_owner

data modify storage cartographer:custom_enchantments custom_statuses set value {}
function cartographer_custom_enchantments:enchantment/passive/surge/custom_statuses/check_allow_status


$execute if entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,limit=5,tag=!ca.surge_cdl,dx=$(size_neg_1),dy=3,dz=$(size_neg_1)] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/damage with storage cartographer:custom_enchantments
$execute unless entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @a[tag=!ca.surge_cdl,limit=5,dx=$(size_neg_1),dy=3,dz=$(size_neg_1)] at @s run function cartographer_custom_enchantments:enchantment/passive/surge/damage with storage cartographer:custom_enchantments

tag @s remove ca.surge_owner

execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:block.netherite_block.break player @a[distance=..16] ~ ~ ~ 2 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 0.5 0.5
execute if score $surge_hit ca.sprint_time_surge matches 1.. run playsound minecraft:entity.breeze.shoot player @a[distance=..16] ~ ~ ~ 1 1.25

$execute if score $surge_hit ca.sprint_time_surge matches 1.. run scoreboard players set $surge_vfx_size ca.ench_surge_lvl $(vfx_size)
$execute if score $surge_hit ca.sprint_time_surge matches 1.. positioned ^ ^ ^ rotated ~ 0 positioned ^ ^ ^-$(place_pos) positioned ^ ^ ^0.75 run function cartographer_custom_enchantments:enchantment/passive/surge/vfx/start

execute if score $surge_hit ca.sprint_time_surge matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/surge",duration:10,delay:0,parameters:{},merge_behavior:"merge"}
execute unless score $surge_hit ca.sprint_time_surge matches 1.. unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/surge",duration:10,delay:0,parameters:{},merge_behavior:"merge"}
execute unless score $surge_hit ca.sprint_time_surge matches 1.. unless entity @s[type=player] run tag @s add ca.surge_inactive