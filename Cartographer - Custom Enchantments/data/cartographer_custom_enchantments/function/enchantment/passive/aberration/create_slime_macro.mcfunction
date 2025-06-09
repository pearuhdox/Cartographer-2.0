$data modify entity @s AbsorptionAmount set value $(health)

execute store result score @s ca.aberration_time run random value 0..20
scoreboard players add @s ca.aberration_time 110
scoreboard players set @s ca.aberration_jump 0
scoreboard players operation @s ca.aberration_splits = $splits ca.ench_aberration_lvl


execute if score $is_player ca.ench_aberration_lvl matches 1.. run tag @s add ca.player_spawned
execute unless score $is_player ca.ench_aberration_lvl matches 1.. run tag @s add ca.mob_spawned

tp @s ~ ~-500 ~

execute if entity @s[tag=ca.player_spawned] at @s run playsound minecraft:entity.slime.squish player @a[distance=..16] ~ ~ ~ 0.8 0.5
execute if entity @s[tag=ca.player_spawned] at @s run playsound minecraft:block.slime_block.fall player @a[distance=..16] ~ ~ ~ 0.8 0.5

execute if entity @s[tag=ca.mob_spawned] at @s run playsound minecraft:entity.slime.squish player @a[distance=..16] ~ ~ ~ 0.8 0.5
execute if entity @s[tag=ca.mob_spawned] at @s run playsound minecraft:block.slime_block.fall player @a[distance=..16] ~ ~ ~ 0.8 0.5

execute at @s run particle minecraft:item_slime ~ ~0.1 ~ 0.65 0.1 0.65 0.1 50 normal
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0.15 0.15 0.15 0.05 20 normal

scoreboard players set $user_id ca.ench_aberration_lvl 0
$execute as $(owner) unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Matoreichon] run scoreboard players set $user_id ca.ench_aberration_lvl 1
$execute as $(owner) unless score @s ca.disable_player_skins matches 1.. if entity @s[name=SlimeKing77777] run scoreboard players set $user_id ca.ench_aberration_lvl 10
$execute as $(owner) unless score @s ca.disable_player_skins matches 1.. if entity @s[name=Matt_97] run scoreboard players set $user_id ca.ench_aberration_lvl 20

execute on passengers run function cartographer_custom_enchantments:enchantment/passive/aberration/custom_skin/directory

tag @s remove ca.new_aberration_bomb
tag @s add ca.aberration_spawn

$function carto_event:api/create_single_entity_event {event:"custom_ench/aberration/slime",duration:600,delay:2,parameters:{telegraph:"$(telegraph)",health:$(health),splits:$(splits),size:$(size),half_size:$(half_size),size_neg_1:$(size_neg_1),damage:$(damage),owner:"$(owner)"},merge_behavior:"none"}
function cartographer_custom_enchantments:enchantment/passive/aberration/custom_statuses/append_status with storage carto_event macro

scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity

scoreboard players add $count ca.entity_purge_var 1
execute on passengers run tag @s add ca.purgable_entity