$execute as $(target) at @s run scoreboard players remove @s ca.warding_hits 1

$execute as $(target) at @s run scoreboard players add @s ca.warding_bank $(damage)

$execute as $(target) at @s store result score $health ca.warding_bank run data get entity @s Health 100

$execute as $(target) at @s if score @s ca.warding_bank matches 100.. run scoreboard players operation @s ca.damage = @s ca.warding_bank

$execute as $(target) at @s run scoreboard players set $has_attacker ca.warding_var 0
$execute as $(target) at @s on attacker run scoreboard players set $has_attacker ca.warding_var 1

#Do damage to set the player health to 1 (avoid lethal)
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 1.. if score @s ca.warding_bank matches 100.. if score $health ca.warding_bank <= @s ca.warding_bank run scoreboard players operation @s ca.damage = $health ca.warding_bank
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 1.. if score @s ca.warding_bank matches 100.. if score $health ca.warding_bank <= @s ca.warding_bank run scoreboard players remove @s ca.damage 100

$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 1.. if score @s ca.warding_bank matches 100.. run scoreboard players operation @s ca.damage /= $10 ca.CONSTANT
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 1.. if score @s ca.warding_bank matches 100.. run function cartographer_core:helper/damage_player/apply_damage
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 1.. if score @s ca.warding_bank matches 100.. run scoreboard players operation @s ca.warding_bank %= $10 ca.CONSTANT

#Do final hit as real damage
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 0 store result storage cartographer:custom_statuses cascade_final_hit_dmg double 0.01 run scoreboard players get @s ca.warding_bank
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 0 run function carto_event:event/custom_statuses/warding/cascade/final_hit with storage cartographer:custom_statuses
$execute as $(target) at @s if entity @s[type=player] if score @s ca.warding_hits matches 0 run scoreboard players set @s ca.warding_bank 0

#Mob Behavior - Subtract the health appropriately from the score that tracks health for the mob
$execute as $(target) at @s unless entity @s[type=player] run scoreboard players operation @s ca.warding_var -= @s ca.warding_bank
$execute as $(target) at @s unless entity @s[type=player] if score @s ca.warding_hits matches 1.. if score @s ca.warding_var matches ..0 run scoreboard players set @s ca.warding_var 1
$execute as $(target) at @s unless entity @s[type=player] run scoreboard players set @s ca.warding_bank 0

#Run Enchant Triggers
$execute as $(target) at @s if score $has_attacker ca.warding_var matches 1.. run function carto_event:event/custom_statuses/warding/cascade/trigger

#Vfx
$execute as $(target) at @s if entity @s[type=player] run playsound minecraft:enchant.thorns.hit player @s ~ ~ ~ 0.35 2
$execute as $(target) at @s if entity @s[type=player] run playsound minecraft:item.shield.block player @s ~ ~ ~ 0.25 2

$execute as $(target) at @s unless entity @s[type=player] run playsound minecraft:enchant.thorns.hit hostile @a[distance=..16] ~ ~ ~ 0.5 2
$execute as $(target) at @s unless entity @s[type=player] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 0.25 2
$execute as $(target) at @s unless entity @s[type=player] run particle minecraft:enchanted_hit ~ ~1 ~ 0.25 0.25 0.25 0.2 10 normal
$execute as $(target) at @s unless entity @s[type=player] positioned ~ ~1 ~ run function carto_event:event/custom_statuses/warding/cascade/vfx

$execute as $(target) at @s run scoreboard players set @s ca.damage 0

return 0