$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score duration= carto_event matches 45 store result score @s ca.special_attack_animation run random value 1..2

$execute as $(target) at @s if score duration= carto_event matches 45 run attribute @s minecraft:attack_damage modifier add ca.slamming_damage -100 add_multiplied_total

$execute as $(target) at @s if score duration= carto_event matches 40 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.5
#$execute as $(target) at @s if score duration= carto_event matches 29 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.6
$execute as $(target) at @s if score duration= carto_event matches 38 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.7
#$execute as $(target) at @s if score duration= carto_event matches 27 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.8
$execute as $(target) at @s if score duration= carto_event matches 36 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.9
#$execute as $(target) at @s if score duration= carto_event matches 25 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.0
$execute as $(target) at @s if score duration= carto_event matches 34 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.1
#$execute as $(target) at @s if score duration= carto_event matches 23 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.2
$execute as $(target) at @s if score duration= carto_event matches 32 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.3
#$execute as $(target) at @s if score duration= carto_event matches 21 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.4
$execute as $(target) at @s if score duration= carto_event matches 30 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.5
#$execute as $(target) at @s if score duration= carto_event matches 19 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.6
$execute as $(target) at @s if score duration= carto_event matches 28 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.7
#$execute as $(target) at @s if score duration= carto_event matches 17 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.8
$execute as $(target) at @s if score duration= carto_event matches 26 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.9
#$execute as $(target) at @s if score duration= carto_event matches 15 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 2.0


$execute as $(telegraph) at @s if score duration= carto_event matches 44 run function carto_event:event/custom_ench/slamming/entity/telegraph_animation with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 40 run attribute @s minecraft:movement_speed modifier add ca.slamming_slow -0.35 add_multiplied_total

$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score duration= carto_event matches 15 run function carto_event:event/custom_ench/slamming/entity/damage_zone with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score duration= carto_event matches 15 run function carto_event:event/custom_ench/slamming/entity/vfx/run with storage carto_event current[-1].parameters


$execute as $(target) at @s if score duration= carto_event matches 15 run attribute @s minecraft:movement_speed modifier remove ca.slamming_slow
$execute as $(target) at @s if score duration= carto_event matches 5 run attribute @s minecraft:attack_damage modifier remove ca.slamming_damage
$execute as $(telegraph) at @s if score duration= carto_event matches 15 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(telegraph) at @s if score duration= carto_event matches 15 run kill @s

$execute if score duration= carto_event matches 15.. as $(telegraph) at @s positioned as $(target) run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 15.. as $(telegraph) at @s run tp @s ~ ~ ~ ~5 ~

$execute as $(target) at @s run tag @s add ca.is_slamming

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.is_slamming
#$execute as $(telegraph) at @s if score duration= carto_event matches 1 run kill @s

#$execute as $(target) at @s unless entity @s[nbt={HurtTime:0s}] if score duration= carto_event matches 16.. run tag @s add ca.end_slamming
#$execute as $(target) at @s if entity @s[tag=ca.end_slamming] run attribute @s minecraft:movement_speed modifier remove ca.slamming_slow
#$execute as $(target) at @s if entity @s[tag=ca.end_slamming] run attribute @s minecraft:attack_damage modifier remove ca.slamming_damage
#$execute as $(target) at @s if entity @s[tag=ca.end_slamming] run tag @s remove ca.is_slamming
#$execute as $(target) at @s if entity @s[tag=ca.end_slamming] on target run scoreboard players add @s ca.special_attack_delay 5
#$execute as $(target) at @s if entity @s[tag=ca.end_slamming] as $(telegraph) run kill @s
#$execute as $(target) at @s if entity @s[tag=ca.end_slamming] run return 0

return 1