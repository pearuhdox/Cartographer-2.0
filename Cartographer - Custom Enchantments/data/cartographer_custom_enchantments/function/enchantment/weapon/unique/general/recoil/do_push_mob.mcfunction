tag @s add co_rotation_lock


scoreboard players operation @s co_send = $force ca.ench_var
scoreboard players operation @s co_send *= $-1 ca.CONSTANT
scoreboard players set @s co_y 4

execute as @s at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @s at @s run function motion:motion/push

scoreboard players set @s ca.recoil_cooldown 40
function carto_event:api/create_single_entity_event {event:"custom_ench/recoil",duration:40,delay:0,parameters:{},merge_behavior:"none"}