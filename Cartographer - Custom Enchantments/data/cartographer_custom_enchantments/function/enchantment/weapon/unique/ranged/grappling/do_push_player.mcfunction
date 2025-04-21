scoreboard players operation $strength player_motion.api.launch = $force ca.ench_var

$execute as $(owner) at @s run tp @s @s

$execute positioned as $(owner) facing entity @s feet as $(owner) run function player_motion:api/launch_looking

$execute as $(owner) at @s run playsound minecraft:item.crossbow.shoot player @a[distance=..16] ~ ~ ~ 0.5 0.5
$execute as $(owner) at @s run playsound minecraft:block.tripwire.detach player @a[distance=..16] ~ ~ ~ 0.8 0.5

$execute as $(owner) at @s run scoreboard players set @s ca.grappling_cooldown 10
$execute as $(owner) at @s run function carto_event:api/create_single_entity_event {event:"custom_ench/grappling",duration:10,delay:0,parameters:{},merge_behavior:"none"}
