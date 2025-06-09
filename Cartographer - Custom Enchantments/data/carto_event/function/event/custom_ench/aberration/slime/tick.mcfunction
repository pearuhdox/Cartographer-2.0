$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0
$execute as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0
$execute as $(target) on passengers run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score @s ca.aberration_dmg matches 1.. run function carto_event:event/custom_ench/aberration/slime/transfer_damage

$execute as $(telegraph) positioned as $(target) if block ~ ~-0.01 ~ #cartographer_core:can_raycast if block ~ ~-1.01 ~ #cartographer_core:can_raycast positioned ~ ~-1.01 ~ align y positioned ~ ~0.05 ~ run tp $(telegraph) ~ ~ ~
$execute as $(telegraph) positioned as $(target) if block ~ ~-0.01 ~ #cartographer_core:can_raycast unless block ~ ~-1.01 ~ #cartographer_core:can_raycast positioned ~ ~-0.01 ~ align y positioned ~ ~0.05 ~ run tp $(telegraph) ~ ~ ~
$execute as $(telegraph) positioned as $(target) unless block ~ ~-0.01 ~ #cartographer_core:can_raycast align y positioned ~ ~0.05 ~ run tp $(telegraph) ~ ~ ~

$execute as $(target) at @s if entity @s[tag=ca.aberration_spawn] run function carto_event:event/custom_ench/aberration/slime/spawn

$execute as $(target) at @s if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_ench/aberration/slime/hurt

$execute as $(target) at @s if score duration= carto_event matches ..590 if score @s ca.aberration_time matches 11.. if entity @s[nbt={fall_distance:0.0d}] run function carto_event:event/custom_ench/aberration/slime/jump with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.aberration_anim matches 10 on passengers run function carto_event:event/custom_ench/aberration/slime/squish
$execute as $(target) at @s if score @s ca.aberration_anim matches 5 on passengers run function carto_event:event/custom_ench/aberration/slime/unsquish

$execute as $(target) at @s if score @s ca.aberration_anim matches 1.. run scoreboard players remove @s ca.aberration_anim 1
$execute as $(target) at @s if score @s ca.aberration_jump matches 1.. run scoreboard players remove @s ca.aberration_jump 1
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 1..9 run scoreboard players remove @s ca.aberration_time 1
$execute as $(target) at @s if score @s ca.aberration_time matches 10.. run scoreboard players remove @s ca.aberration_time 1

$execute as $(target) at @s if score @s ca.aberration_time matches 25 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 0.8 
$execute as $(target) at @s if score @s ca.aberration_time matches 1..25 run particle minecraft:smoke ~ ~0.25 ~ 0.1 0.2 0.1 0.05 1 normal
$execute as $(target) at @s if score @s ca.aberration_time matches 25 as $(telegraph) at @s unless entity @s[tag=ca.already_telegraphed] run function carto_event:event/custom_ench/aberration/slime/telegraph_animation
$execute as $(target) at @s if score @s ca.aberration_time matches ..20 as $(telegraph) at @s run tp @s ~ ~ ~ ~2 ~

$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 0 run kill $(telegraph)
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 0 run scoreboard players remove $count ca.entity_purge_var 1

$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 9 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 1.5 
#$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 9 anchored feet positioned ^ ^ ^ rotated ~ 0 if entity @s[tag=ca.player_spawned] positioned ~ ~0.5 ~ run function carto_event:event/custom_ench/aberration/slime/vfx_player with storage carto_event current[-1].parameters
#$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 9 anchored feet positioned ^ ^ ^ rotated ~ 0 unless entity @s[tag=ca.player_spawned] positioned ~ ~0.5 ~ run function carto_event:event/custom_ench/aberration/slime/vfx_enemy with storage carto_event current[-1].parameters
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 9 if entity @s[tag=ca.player_spawned] as @e[type=#cartographer_core:affected_by_carto,limit=5,sort=nearest,distance=..$(half_size)] run function carto_event:api/create_single_entity_event {event:"custom_ench/aberration/immobilize",duration:10,delay:0,parameters:{},merge_behavior:"none"}


$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches ..6 run particle minecraft:smoke ~ ~0.25 ~ 0.1 0.1 0.1 0.1 2 normal
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 6 on passengers run function carto_event:event/custom_ench/aberration/slime/squish_explode
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 3 on passengers run function carto_event:event/custom_ench/aberration/slime/unsquish_explode
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 0 run return run function carto_event:event/custom_ench/aberration/slime/explode with storage carto_event current[-1].parameters

$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 9 as $(telegraph) at @s unless entity @s[tag=ca.already_telegraphed] run function carto_event:event/custom_ench/aberration/slime/telegraph_animation

scoreboard players set $death ca.ench_aberration_lvl 0
$execute as $(target) at @s if entity @s[nbt={AbsorptionAmount:0.0f}] run function carto_event:event/custom_ench/aberration/slime/death with storage carto_event current[-1].parameters

$execute if score $death ca.ench_aberration_lvl matches 1.. run kill $(telegraph)
$execute if score $death ca.ench_aberration_lvl matches 1.. as $(telegraph) run scoreboard players remove $count ca.entity_purge_var 1
execute if score $death ca.ench_aberration_lvl matches 1.. run return 0

return 1