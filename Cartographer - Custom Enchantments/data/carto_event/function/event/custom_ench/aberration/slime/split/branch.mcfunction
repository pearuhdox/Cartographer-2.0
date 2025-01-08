$data modify entity @s AbsorptionAmount set value $(health)

execute store result score @s ca.aberration_time run random value 0..20
scoreboard players add @s ca.aberration_time 120
scoreboard players set @s ca.aberration_jump 0
scoreboard players operation @s ca.aberration_splits = $split_splits ca.ench_aberration_lvl

execute if score $is_player ca.ench_aberration_lvl matches 1.. run tag @s add ca.player_spawned
execute unless score $is_player ca.ench_aberration_lvl matches 1.. run tag @s add ca.mob_spawned

execute at @s run tp @s ~ ~-501 ~

execute at @s run playsound minecraft:entity.slime.squish player @a[distance=..16] ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:block.slime_block.fall player @a[distance=..16] ~ ~ ~ 2 0.5

execute at @s run particle minecraft:item_slime ~ ~0.1 ~ 0.65 0.1 0.65 0.1 50 normal
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.15 0.15 0.15 0.05 20 normal

tag @s add co_rotation_lock

scoreboard players set @s co_send 5
scoreboard players set @s co_y 4

$execute at @s facing entity $(target) feet rotated ~ 0 run rotate @s ~ ~
execute as @s at @s run function motion:motion/push

tag @s remove co_rotation_lock

execute on passengers run data modify entity @s item set from storage cartographer:custom_enchantments aberration_skin

tag @s remove ca.new_aberration_bomb
tag @s add ca.aberration_spawn

data modify storage cartographer:custom_enchantments status_enchant_hit.enchantment_hit set from storage carto_event current[-1].parameters.status_info.enchantment_hit

execute summon text_display run function cartographer_custom_enchantments:enchantment/passive/aberration/create_telegraphing with storage cartographer:custom_enchantments

$execute as $(owner) at @s run scoreboard players add @s ca.aberration_ct 1

$function carto_event:api/create_single_entity_event {event:"custom_ench/aberration/slime",duration:600,delay:2,parameters:{health:$(health),splits:$(splits),size:$(size),half_size:$(half_size),size_neg_1:$(size_neg_1),damage:$(damage),owner:"$(owner)"},merge_behavior:"none"}
function carto_event:event/custom_ench/aberration/slime/split/append_status with storage carto_event macro

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity

scoreboard players add $count ca.entity_purge_var 1
execute on passengers run tag @s add ca.purgable_entity