$execute as @a[distance=..$(range)] run function cartographer_mob_utils:custom_explosion/los/start with storage cartographer_mob_utils:explosion data

$scoreboard players set $explode_radius ca.explode_var $(explosion_radius)
execute if score $explode_radius ca.explode_var matches 1.. run stopsound @a[distance=..32] * entity.generic.explode
$execute if score $explode_radius ca.explode_var matches 1.. run summon creeper ~ ~ ~ {Silent:1b,ExplosionRadius:$(explosion_radius)b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0.0625}]}

execute if data storage cartographer_mob_utils:explosion data.command run function cartographer_mob_utils:custom_explosion/run_command with storage cartographer_mob_utils:explosion data

#scoreboard players set @a ca.explode_dist 0