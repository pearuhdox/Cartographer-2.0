$execute as $(owner) at @s run tag @s add co_rotation_lock

$execute as $(owner) at @s run scoreboard players operation @s co_send = $force ca.ench_var
$execute as $(owner) at @s run scoreboard players set @s co_y 4

$execute as $(owner) at @s run playsound minecraft:item.crossbow.shoot hostile @a[distance=..24] ~ ~ ~ 1.5 0.5
$execute as $(owner) at @s run playsound minecraft:block.tripwire.detach hostile @a[distance=..24] ~ ~ ~ 1.6 0.5

$execute positioned as $(owner) facing entity @s feet as $(owner) run tp @s ~ ~ ~ ~ ~
$execute as $(owner) at @s run function motion:motion/push

$execute as $(owner) at @s run scoreboard players set @s ca.grappling_cooldown 60
$execute as $(owner) at @s run function carto_event:api/create_single_entity_event {event:"custom_ench/grappling",duration:60,delay:0,parameters:{},merge_behavior:"none"}