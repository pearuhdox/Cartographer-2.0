$execute as $(target) at @s if entity @s[tag=ca.aberration_spawn] run function carto_event:event/custom_ench/aberration/slime/spawn

$execute as $(target) at @s if entity @s[nbt={HurtTime:9s}] run function carto_event:event/custom_ench/aberration/slime/hurt

$execute as $(target) at @s if score duration= carto_event matches ..590 if score @s ca.aberration_time matches 7.. unless score @s ca.aberration_jump matches 1.. if entity @s[nbt={FallDistance:0.0f}] run function carto_event:event/custom_ench/aberration/slime/jump with storage carto_event current[-1].parameters

$execute as $(target) at @s if score @s ca.aberration_anim matches 10 on passengers run function carto_event:event/custom_ench/aberration/slime/squish
$execute as $(target) at @s if score @s ca.aberration_anim matches 5 on passengers run function carto_event:event/custom_ench/aberration/slime/unsquish

$execute as $(target) at @s if score @s ca.aberration_anim matches 1.. run scoreboard players remove @s ca.aberration_anim 1
$execute as $(target) at @s if score @s ca.aberration_jump matches 1.. run scoreboard players remove @s ca.aberration_jump 1
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 1..7 run scoreboard players remove @s ca.aberration_time 1
$execute as $(target) at @s if score @s ca.aberration_time matches 8.. run scoreboard players remove @s ca.aberration_time 1

$execute as $(target) at @s if score @s ca.aberration_time matches 25 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 0.8 
$execute as $(target) at @s if score @s ca.aberration_time matches 1..25 run particle minecraft:smoke ~ ~0.25 ~ 0.1 0.2 0.1 0.05 1 normal

$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 6 run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~ ~ 1 1.5 
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches ..6 run particle minecraft:smoke ~ ~0.25 ~ 0.1 0.1 0.1 0.1 2 normal
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 6 on passengers run function carto_event:event/custom_ench/aberration/slime/squish_explode
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 3 on passengers run function carto_event:event/custom_ench/aberration/slime/unsquish_explode
$execute as $(target) at @s unless score @s ca.aberration_anim matches 1.. if score @s ca.aberration_time matches 0 run return run function carto_event:event/custom_ench/aberration/slime/explode with storage carto_event current[-1].parameters

scoreboard players set $death ca.ench_aberration_lvl 0
$execute as $(target) at @s if entity @s[nbt={AbsorptionAmount:0.0f}] run function carto_event:event/custom_ench/aberration/slime/death
execute if score $death ca.ench_aberration_lvl matches 1.. run return 0

return 1