$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0
$execute as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score @s ca.quake_dmg matches 1.. run function carto_event:event/custom_ench/quake/charge/transfer_damage
#$execute as $(target) at @s run say $(damage)

$execute as $(target) at @s unless score @s ca.quake_time matches 10.. run particle minecraft:block{block_state:{Name:"$(block)"}} ~ ~0.5 ~ 0.3 0.15 0.3 0.1 2 normal
$execute as $(target) at @s if score @s ca.quake_time matches 5..10 unless entity @s[tag=ca.player_spawned] run particle minecraft:large_smoke ~ ~0.5 ~ 0.3 0.15 0.3 0 1 normal

$execute if score duration= carto_event matches 99 as $(target) at @s run scoreboard players operation $size ca.quake_max = @s ca.quake_max
$execute if score duration= carto_event matches 99 as $(telegraph) run function carto_event:event/custom_ench/quake/charge/telegraph_animation
$execute if score duration= carto_event matches ..90 as $(telegraph) at @s run tp @s ~ ~ ~ ~2 ~

$execute as $(target) unless entity @s[tag=ca.player_spawned] unless score @s ca.quake_time matches 9.. as $(telegraph) at @s run function carto_event:event/custom_ench/quake/charge/detect_player/start


scoreboard players operation $mod ca.ench_quake_lvl = duration= carto_event
scoreboard players operation $mod ca.ench_quake_lvl %= $2 ca.CONSTANT

$execute as $(target) at @s if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 10.. run function carto_event:event/custom_ench/quake/charge/wave

$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 4 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 0.5 0.5
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 5 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 0.6 0.6
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 6 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 0.7 0.7
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 7 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 0.8 0.8
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 8 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 0.9 0.9
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 9 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 1.0 1.0
$execute as $(target) at @s unless entity @s[tag=ca.player_spawned] if score $mod ca.ench_quake_lvl matches 1 if score @s ca.quake_time matches 10 run playsound minecraft:block.note_block.basedrum hostile @a[distance=..12] ~ ~ ~ 1.1 1.1

$execute as $(target) at @s if score $mod ca.ench_quake_lvl matches 1 run scoreboard players add @s ca.quake_time 1

$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) at @s if score duration= carto_event matches 1 run kill @s
$execute as $(target) at @s run return 1

$execute as $(target) if score @s ca.quake_ct matches 1.. run scoreboard players remove @s ca.quake_ct 1
$execute as $(telegraph) at @s run scoreboard players remove $count ca.entity_purge_var 1
$kill $(telegraph)

return 0