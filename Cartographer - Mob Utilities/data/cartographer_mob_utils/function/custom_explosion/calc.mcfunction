kill @e[type=area_effect_cloud,limit=1,sort=nearest,distance=..0.5,nbt={potion_duration_scale:0.25f}]

$execute as @a[distance=..$(range)] run function cartographer_mob_utils:custom_explosion/los/start with storage cartographer_mob_utils:explosion data

$scoreboard players set $explode_radius ca.explode_var $(explosion_radius)
execute if score $explode_radius ca.explode_var matches 1.. run stopsound @a[distance=..32] * entity.generic.explode
$execute if score $explode_radius ca.explode_var matches 1.. run function cartographer_core:handlers/explosion/create {type:"damage_no_player",radius:$(range)}
$execute if score $explode_radius ca.explode_var matches 1.. run function cartographer_core:handlers/explosion/create {type:"knockback",radius:$(range)}
$execute if score $explode_radius ca.explode_var matches 1.. run function cartographer_core:handlers/explosion/create {type:"visual",radius:$(explosion_radius)}
$execute if score $explode_radius ca.explode_var matches 1.. run function cartographer_core:handlers/explosion/create {type:"mob",radius:$(explosion_radius)}


execute if data storage cartographer_mob_utils:explosion data.command run function cartographer_mob_utils:custom_explosion/run_command with storage cartographer_mob_utils:explosion data

scoreboard players set @a ca.explode_dist 0