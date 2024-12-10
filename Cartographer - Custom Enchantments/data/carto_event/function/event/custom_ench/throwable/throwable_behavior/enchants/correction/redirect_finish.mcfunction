scoreboard players set @s ca.raycast 0
scoreboard players set $hit ca.ench_correction_lvl 1

tag @s add co_rotation_lock

scoreboard players set @s ca.raycast 15
function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/raycast_vfx

execute if score $type ca.ench_correction_lvl matches 1 unless entity @a[distance=..3] run particle minecraft:dust{color:[0.3,1.0,0.7],scale:2.5} ~ ~ ~ 0 0 0 0 1 force
execute if score $type ca.ench_correction_lvl matches 2 run particle minecraft:dust{color:[0.3,1.0,0.7],scale:2.5} ~ ~ ~ 0 0 0 0 1 force

execute if score $type ca.ench_correction_lvl matches 1 run playsound minecraft:entity.shulker_bullet.hit player @a[distance=..16] ~ ~ ~ 1 0.6
execute if score $type ca.ench_correction_lvl matches 1 run playsound minecraft:entity.ender_dragon.hurt player @a[distance=..16] ~ ~ ~ 0.33 1.5

execute if score $type ca.ench_correction_lvl matches 2 run playsound minecraft:entity.shulker_bullet.hit hostile @a[distance=..16] ~ ~ ~ 1 0.6
execute if score $type ca.ench_correction_lvl matches 2 run playsound minecraft:entity.ender_dragon.hurt hostile @a[distance=..16] ~ ~ ~ 0.33 1.5

execute positioned as @s facing ^ ^0.5 ^5 run function carto_event:event/custom_ench/throwable/throwable_behavior/alter_direction with storage carto_event current[-1].parameters

tag @s add ca.corrected