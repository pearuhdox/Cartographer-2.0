$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

scoreboard players operation $mod ca.ench_starfall_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_starfall_lvl %= $20 ca.CONSTANT

$execute if score duration= carto_event matches 6 as $(telegraph) at @s if score @s ca.starfall_dmg matches 1.. run function carto_event:event/custom_ench/starfall/meteor/transfer_damage

$execute if score duration= carto_event matches 40 as $(target) if entity @s[type=player] positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ run particle minecraft:dust{color:[1,1,1],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0.1 45 normal
$execute if score duration= carto_event matches 40 as $(target) unless entity @s[type=player] positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ run particle minecraft:dust{color:[0.7,0.3,0.3],scale:2.0} ~ ~ ~ 0.6 0.1 0.6 0.1 45 normal
$execute if score duration= carto_event matches 40 as $(target) positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ run particle minecraft:end_rod ~ ~ ~ 0.6 0.1 0.6 0.1 10 normal

$execute if score duration= carto_event matches 39 as $(telegraph) run function carto_event:event/custom_ench/starfall/meteor/telegraph_animation
$execute if score duration= carto_event matches ..34 as $(telegraph) at @s run tp @s ~ ~ ~ ~2 ~

$execute if score duration= carto_event matches 5.. as $(target) unless entity @s[type=player] as $(telegraph) at @s as @a[distance=..$(half_size)] run function carto_event:event/custom_ench/starfall/meteor/detect_player/warning

#$execute as $(target) if entity @s[type=player] positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ run particle minecraft:dust{color:[1,1,1],scale:2.0} ~ ~ ~ 0.75 0.1 0.75 0.1 2 normal
#$execute as $(target) unless entity @s[type=player] positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ run particle minecraft:dust{color:[0.7,0.3,0.3],scale:2.0} ~ ~ ~ 0.75 0.1 0.75 0.1 2 normal

$execute as $(target) positioned $(x) $(y) $(z) positioned ~ ~0.1 ~ if score $mod ca.ench_starfall_lvl matches 19 run function carto_event:event/custom_ench/starfall/meteor/vfx with storage carto_event current[-1].parameters

$execute as $(target) positioned $(x) $(y) $(z) positioned ~ ~$(meteor_height) ~ positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 2 normal
$execute as $(target) positioned $(x) $(y) $(z) positioned ~ ~$(meteor_height) ~ run particle minecraft:dust{color:[0.671,0.678,0.722],scale:2.0} ~ ~ ~ 0.2 0.2 0.2 0.1 5 normal
$execute as $(target) positioned $(x) $(y) $(z) positioned ~ ~$(meteor_height) ~ run playsound minecraft:entity.firework_rocket.twinkle_far ambient @a[distance=..16] ~ ~ ~ 1 2

execute store result score $height ca.ench_starfall_lvl run data get storage carto_event current[-1].parameters.meteor_height
scoreboard players remove $height ca.ench_starfall_lvl 1
execute store result storage carto_event current[-1].parameters.meteor_height double 1 run scoreboard players get $height ca.ench_starfall_lvl

$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run particle minecraft:dust_plume ~ ~ ~ 0.6 0.2 0.6 0.25 60 normal
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ 0.6 0.3 0.6 0.1 35 normal
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run particle minecraft:dust_pillar{block_state:"$(block)"} ~ ~0.2 ~ 0.6 0.3 0.6 0.05 35 normal

$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run playsound minecraft:entity.explode ambient @a ~ ~ ~ 1 2
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run playsound minecraft:item.mace.smash_ground_heavy ambient @a ~ ~ ~ 1 1.25
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run playsound minecraft:entity.firework_rocket.large_blast ambient @a ~ ~ ~ 2 0.5
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) run playsound minecraft:entity.firework_rocket.twinkle_far ambient @a ~ ~ ~ 2 0.75

$execute if score duration= carto_event matches 21.. as $(target) positioned $(x) $(y) $(z) if entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,tag=!ca.trailblazer_cdl,dx=$(size_neg_1),dy=0,dz=$(size_neg_1)] at @s run effect give @s slowness 1 0

$execute if score duration= carto_event matches 6 as $(telegraph) at @s run tag @s add ca.damaging

$execute if score duration= carto_event matches 1..5 as $(target) positioned $(x) $(y) $(z) if entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,limit=2,tag=!ca.starfall_cdl,dx=$(size_neg_1),dy=0,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/starfall/meteor/damage with storage carto_event current[-1].parameters
$execute if score duration= carto_event matches 1 as $(target) positioned $(x) $(y) $(z) unless entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @a[tag=!ca.starfall_cdl,limit=2,dx=$(size_neg_1),dy=0,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/starfall/meteor/damage with storage carto_event current[-1].parameters


$execute as $(telegraph) if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1

$execute if score duration= carto_event matches 1 as $(target) if score @s ca.starfall_ct matches 1.. run scoreboard players remove @s ca.starfall_ct 1
$execute if score duration= carto_event matches 1 run kill $(telegraph)

return 1