particle minecraft:explosion ~ ~0.3 ~ 0 0 0 0 1 force

playsound minecraft:entity.slime.jump hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.slime_block.place hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:block.slime_block.place hostile @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 0.5 2

execute at @s anchored feet positioned ^ ^ ^ rotated ~ 0 if entity @s[tag=ca.player_spawned] positioned ~ ~0.5 ~ run function carto_event:event/custom_ench/aberration/slime/vfx_player with storage carto_event current[-1].parameters
execute at @s anchored feet positioned ^ ^ ^ rotated ~ 0 unless entity @s[tag=ca.player_spawned] positioned ~ ~0.5 ~ run function carto_event:event/custom_ench/aberration/slime/vfx_enemy with storage carto_event current[-1].parameters

scoreboard players set $should_split ca.ench_aberration_lvl 0
$execute if entity @s[tag=ca.player_spawned] positioned ~-$(half_size) ~-1 ~-$(half_size) as @e[type=#bb:hostile,limit=5,sort=nearest,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/aberration/slime/damage with storage carto_event current[-1].parameters
$execute unless entity @s[tag=ca.player_spawned] positioned ~-$(half_size) ~-1 ~-$(half_size) as @a[limit=2,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/aberration/slime/damage_player
tag @a remove ca.aberration_cdl

execute if entity @s[tag=ca.player_spawned] as @e[type=#bb:hostile,distance=..16] run scoreboard players set $should_split ca.ench_aberration_lvl 1
execute unless entity @s[tag=ca.player_spawned] as @a[distance=..16] run scoreboard players set $should_split ca.ench_aberration_lvl 1

execute if score $should_split ca.ench_aberration_lvl matches 1.. if score @s ca.aberration_splits matches 1.. run function carto_event:event/custom_ench/aberration/slime/split/data

execute on passengers run kill @s
tp @s ~ -500 ~

return 0