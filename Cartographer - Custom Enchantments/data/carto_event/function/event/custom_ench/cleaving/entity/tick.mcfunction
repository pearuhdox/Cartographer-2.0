$execute as $(telegraph) at @s run scoreboard players set @s ca.entity_purge_var 0

#Runs every tick for controlling event
$execute as $(target) at @s run scoreboard players set $attack ca.special_attack_windup $(windup)
$execute as $(target) at @s run scoreboard players set $end ca.special_attack_windup $(windup)
$execute as $(target) at @s run scoreboard players add $end ca.special_attack_windup 15
$execute as $(target) at @s run scoreboard players set $restore_attack ca.special_attack_windup $(windup)
$execute as $(target) at @s run scoreboard players add $restore_attack ca.special_attack_windup 10

$execute as $(target) at @s run scoreboard players add @s ca.special_attack_windup 1

$execute as $(target) at @s run scoreboard players operation $perc ca.special_attack_windup = @s ca.special_attack_windup
$execute as $(target) at @s run scoreboard players operation $perc ca.special_attack_windup *= $100 ca.CONSTANT
$execute as $(target) at @s run scoreboard players operation $perc ca.special_attack_windup /= $attack ca.special_attack_windup

$execute as $(target) at @s run scoreboard players operation $perc_prev ca.special_attack_windup = @s ca.special_attack_windup
$execute as $(target) at @s run scoreboard players remove $perc_prev ca.special_attack_windup 1
$execute as $(target) at @s run scoreboard players operation $perc_prev ca.special_attack_windup *= $100 ca.CONSTANT
$execute as $(target) at @s run scoreboard players operation $perc_prev ca.special_attack_windup /= $attack ca.special_attack_windup

#Remove damage dealing amount - choose animation piece if needed
$execute as $(target) at @s if score @s ca.special_attack_windup matches 1 store result score @s ca.special_attack_animation run random value 1..2
$execute as $(target) at @s if score @s ca.special_attack_windup matches 1 run attribute @s minecraft:attack_damage modifier add ca.cleaving_damage -100 add_multiplied_total

#Start Telegraph 1 tick delayed
$execute as $(target) if score @s ca.special_attack_windup matches 2 as $(telegraph) at @s run function carto_event:event/custom_ench/cleaving/entity/telegraph_animation with storage carto_event current[-1].parameters

#Slowdown
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 15.. if score $perc_prev ca.special_attack_windup matches ..14 run attribute @s minecraft:movement_speed modifier add ca.cleaving_slow -0.35 add_multiplied_total

$execute as $(target) at @s if score $perc ca.special_attack_windup matches 10.. if score $perc_prev ca.special_attack_windup matches ..9 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.5
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 15.. if score $perc_prev ca.special_attack_windup matches ..14 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.7
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 20.. if score $perc_prev ca.special_attack_windup matches ..19 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 0.9
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 25.. if score $perc_prev ca.special_attack_windup matches ..24 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.1
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 30.. if score $perc_prev ca.special_attack_windup matches ..29 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.3
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 35.. if score $perc_prev ca.special_attack_windup matches ..34 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.5
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 40.. if score $perc_prev ca.special_attack_windup matches ..39 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.7
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 45.. if score $perc_prev ca.special_attack_windup matches ..44 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.9

$execute as $(target) at @s if score $perc ca.special_attack_windup matches 70.. if score $perc_prev ca.special_attack_windup matches ..69 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.5
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 75.. if score $perc_prev ca.special_attack_windup matches ..74 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.5
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 80.. if score $perc_prev ca.special_attack_windup matches ..79 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.5
$execute as $(target) at @s if score $perc ca.special_attack_windup matches 85.. if score $perc_prev ca.special_attack_windup matches ..84 run playsound minecraft:block.note_block.hat hostile @a[distance=..16] ~ ~ ~ 1 1.5


$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score $perc ca.special_attack_windup matches 100.. if score $perc_prev ca.special_attack_windup matches ..99 run function carto_event:event/custom_ench/cleaving/entity/damage_zone with storage carto_event current[-1].parameters

$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 1 if score $perc ca.special_attack_windup matches 90.. if score $perc_prev ca.special_attack_windup matches ..89 run function carto_event:event/custom_ench/cleaving/entity/vfx/1/1 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 1 if score $perc ca.special_attack_windup matches 95.. if score $perc_prev ca.special_attack_windup matches ..94 run function carto_event:event/custom_ench/cleaving/entity/vfx/1/2 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 1 if score $perc ca.special_attack_windup matches 100.. if score $perc_prev ca.special_attack_windup matches ..99 run function carto_event:event/custom_ench/cleaving/entity/vfx/1/3 with storage carto_event current[-1].parameters

$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 2 if score $perc ca.special_attack_windup matches 90.. if score $perc_prev ca.special_attack_windup matches ..89 run function carto_event:event/custom_ench/cleaving/entity/vfx/2/1 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 2 if score $perc ca.special_attack_windup matches 95.. if score $perc_prev ca.special_attack_windup matches ..94 run function carto_event:event/custom_ench/cleaving/entity/vfx/2/2 with storage carto_event current[-1].parameters
$execute as $(target) at $(telegraph) if entity @s[nbt={DeathTime:0s}] if score @s ca.special_attack_animation matches 2 if score $perc ca.special_attack_windup matches 100.. if score $perc_prev ca.special_attack_windup matches ..99 run function carto_event:event/custom_ench/cleaving/entity/vfx/2/3 with storage carto_event current[-1].parameters


$execute as $(target) at @s if score $perc ca.special_attack_windup matches 100.. run attribute @s minecraft:movement_speed modifier remove ca.cleaving_slow
$execute as $(telegraph) at @s if score $perc ca.special_attack_windup matches 100.. run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(telegraph) at @s if score $perc ca.special_attack_windup matches 100.. run kill @s

$execute if score $perc ca.special_attack_windup matches ..50 as $(target) at @s on target run tag @s add ca.mob_cleaving_target
$execute if score $perc ca.special_attack_windup matches ..50 as $(target) unless entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p[tag=ca.mob_cleaving_target] feet run tp @s ~ ~ ~ ~ 0
$execute if score $perc ca.special_attack_windup matches ..50 as $(target) if entity @s[type=minecraft:zoglin] as $(telegraph) at $(target) facing entity @p feet run tp @s ~ ~ ~ ~ 0
$execute if score $perc ca.special_attack_windup matches ..50 as $(target) at @s run tag @a remove ca.mob_cleaving_target

$execute if score $perc ca.special_attack_windup matches ..50 as $(target) on target positioned as $(target) facing entity @s feet as $(telegraph) run tp @s ~ ~ ~ ~ 0
$execute if score $perc ca.special_attack_windup matches 50.. as $(telegraph) at @s positioned as $(target) run tp @s ~ ~ ~

$execute if score $perc ca.special_attack_windup matches ..90 as $(telegraph) at @s run function carto_event:event/custom_ench/cleaving/entity/detect_player with storage carto_event current[-1].parameters

$execute as $(target) at @s run tag @s add ca.is_cleaving

$execute as $(target) at @s if score @s ca.special_attack_windup = $restore_attack ca.special_attack_windup run attribute @s minecraft:attack_damage modifier remove ca.cleaving_damage

$execute as $(target) at @s if score @s ca.special_attack_windup >= $end ca.special_attack_windup run tag @s remove ca.is_cleaving
$execute as $(target) at @s if score @s ca.special_attack_windup >= $end ca.special_attack_windup run return 0

$execute as $(target) unless entity @s[nbt={DeathTime:0s}] run kill $(telegraph) 
$execute as $(target) unless entity @s[nbt={DeathTime:0s}] run return 0


return 1