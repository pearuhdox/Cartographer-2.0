$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

$execute as $(target) at @s if score duration= carto_event matches 45 store result score @s ca.special_attack_animation run random value 1..2

$execute as $(target) at @s if score duration= carto_event matches 45 run attribute @s minecraft:attack_damage modifier add ca.cleaving_damage -100 add_multiplied_total

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

$execute as $(telegraph) at @s if score duration= carto_event matches 45 at $(target) run tp @s ~ ~ ~ ~ ~
$execute as $(telegraph) at @s if score duration= carto_event matches 44 run function carto_event:event/custom_ench/cleaving/entity/telegraph_animation with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 40 run attribute @s minecraft:movement_speed modifier add ca.cleaving_slow -0.35 add_multiplied_total

$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score duration= carto_event matches 15 run function carto_event:event/custom_ench/cleaving/entity/damage_zone with storage carto_event current[-1].parameters

$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 1 if score duration= carto_event matches 17 run function carto_event:event/custom_ench/cleaving/entity/vfx/1/1 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 1 if score duration= carto_event matches 16 run function carto_event:event/custom_ench/cleaving/entity/vfx/1/2 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 1 if score duration= carto_event matches 15 run function carto_event:event/custom_ench/cleaving/entity/vfx/1/3 with storage carto_event current[-1].parameters

$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 2 if score duration= carto_event matches 17 run function carto_event:event/custom_ench/cleaving/entity/vfx/2/1 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 2 if score duration= carto_event matches 16 run function carto_event:event/custom_ench/cleaving/entity/vfx/2/2 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 2 if score duration= carto_event matches 15 run function carto_event:event/custom_ench/cleaving/entity/vfx/2/3 with storage carto_event current[-1].parameters


$execute as $(target) at @s if score duration= carto_event matches 15 run attribute @s minecraft:movement_speed modifier remove ca.cleaving_slow
$execute as $(target) at @s if score duration= carto_event matches 5 run attribute @s minecraft:attack_damage modifier remove ca.cleaving_damage
$execute as $(telegraph) at @s if score duration= carto_event matches 15 run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(telegraph) at @s if score duration= carto_event matches 15 run kill @s

$execute if score duration= carto_event matches 31.. as $(target) at @s on target run tag @s add ca.mob_cleaving_target
$execute if score duration= carto_event matches 31.. as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_cleaving_target] feet run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 31.. as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches 31.. as $(target) at @s run tag @a remove ca.mob_cleaving_target

$execute if score duration= carto_event matches 17.. as $(telegraph) at @s run function carto_event:event/custom_ench/cleaving/entity/detect_player with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 31.. as $(target) on target positioned as $(target) facing entity @s feet as $(telegraph) run tp @s ~ ~ ~ ~ 0
$execute if score duration= carto_event matches ..30 as $(telegraph) at @s positioned as $(target) run tp @s ~ ~ ~

$execute as $(target) at @s run tag @s add ca.is_cleaving

$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.is_cleaving
#$execute as $(telegraph) at @s if score duration= carto_event matches 1 run kill @s

#$execute as $(target) at @s unless entity @s[nbt={HurtTime:0s}] if score duration= carto_event matches 16.. run tag @s add ca.end_cleaving
#$execute as $(target) at @s if entity @s[tag=ca.end_cleaving] run attribute @s minecraft:movement_speed modifier remove ca.slamming_slow
#$execute as $(target) at @s if entity @s[tag=ca.end_cleaving] run attribute @s minecraft:attack_damage modifier remove ca.slamming_damage
#$execute as $(target) at @s if entity @s[tag=ca.end_cleaving] run tag @s remove ca.is_slamming
#$execute as $(target) at @s if entity @s[tag=ca.end_cleaving] on target run scoreboard players add @s ca.special_attack_delay 5
#$execute as $(target) at @s if entity @s[tag=ca.end_cleaving] as $(telegraph) run kill @s
#$execute as $(target) at @s if entity @s[tag=ca.end_cleaving] run return 0


return 1