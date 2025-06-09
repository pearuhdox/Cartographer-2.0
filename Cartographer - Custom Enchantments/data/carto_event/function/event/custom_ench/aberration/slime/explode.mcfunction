particle minecraft:explosion ~ ~0.3 ~ 0 0 0 0 1 force

playsound minecraft:entity.slime.jump hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
playsound minecraft:block.slime_block.place hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
playsound minecraft:block.slime_block.place hostile @a[distance=..16] ~ ~ ~ 0.5 0.5
playsound minecraft:entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 0.25 2

execute at @s anchored feet positioned ^ ^ ^ rotated ~ 0 if entity @s[tag=ca.player_spawned] positioned ~ ~0.5 ~ run function carto_event:event/custom_ench/aberration/slime/vfx_player with storage carto_event current[-1].parameters
execute at @s anchored feet positioned ^ ^ ^ rotated ~ 0 unless entity @s[tag=ca.player_spawned] positioned ~ ~0.5 ~ run function carto_event:event/custom_ench/aberration/slime/vfx_enemy with storage carto_event current[-1].parameters

scoreboard players set $should_split ca.ench_aberration_lvl 0
$execute if entity @s[tag=ca.player_spawned] positioned ~-$(half_size) ~-1 ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,tag=!ca.aberration_bomb,limit=5,sort=nearest,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/aberration/slime/damage with storage carto_event current[-1].parameters
$execute unless entity @s[tag=ca.player_spawned] positioned ~-$(half_size) ~-1 ~-$(half_size) as @a[limit=2,dx=$(size_neg_1),dy=1,dz=$(size_neg_1)] positioned ~$(half_size) ~1 ~$(half_size) run function carto_event:event/custom_ench/aberration/slime/damage_player
tag @a remove ca.aberration_cdl

execute if entity @s[tag=ca.player_spawned] as @e[type=#cartographer_core:affected_by_carto,tag=!ca.aberration_bomb,distance=..16] run scoreboard players set $should_split ca.ench_aberration_lvl 1
execute unless entity @s[tag=ca.player_spawned] as @a[distance=..16] run scoreboard players set $should_split ca.ench_aberration_lvl 1


scoreboard players set $success ca.rand 0
scoreboard players set $target ca.rand 50

$execute if entity @s[tag=ca.player_spawned] as $(owner) at @s run scoreboard players operation $entropy ca.rand = @s ca.aberration_entropy
$execute if entity @s[tag=ca.player_spawned] as $(owner) at @s run function cartographer_core:handlers/random/roll
execute unless entity @s[tag=ca.player_spawned] run scoreboard players set $entropy ca.rand 0
execute unless entity @s[tag=ca.player_spawned] run function cartographer_core:handlers/random/roll

execute unless score $success ca.rand matches 1.. run scoreboard players set $value ca.aberration_entropy 5
execute unless score $success ca.rand matches 1.. if score $value ca.aberration_entropy matches 0 run scoreboard players set $value ca.aberration_entropy 1
$execute unless score $success ca.rand matches 1.. as $(owner) at @s run scoreboard players operation @s ca.aberration_entropy += $value ca.aberration_entropy

execute unless score $success ca.rand matches 1.. run scoreboard players set $should_split ca.ench_aberration_lvl 0

$execute if score $success ca.rand matches 1.. as $(owner) at @s run scoreboard players set @s ca.aberration_entropy 0


execute if score $should_split ca.ench_aberration_lvl matches 1.. if score @s ca.aberration_splits matches 1.. run function carto_event:event/custom_ench/aberration/slime/split/data

$execute as $(owner) at @s if score @s ca.aberration_ct matches 1.. run scoreboard players remove @s ca.aberration_ct 1

scoreboard players remove $count ca.entity_purge_var 2
execute on passengers run kill @s
tp @s ~ -500 ~

return 0