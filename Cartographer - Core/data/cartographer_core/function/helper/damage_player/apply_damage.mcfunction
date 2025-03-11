# invert the damage score so it can be used correctly
scoreboard players operation @s ca.damage *= $-1 ca.CONSTANT

scoreboard players set $prev_health_boost_amp ca.damage 0
scoreboard players set $prev_health_boost_dur ca.damage 0
scoreboard players set $prev_health_boost_health ca.damage 0

execute store result score $prev_health_boost_amp ca.damage run data get entity @s active_effects[{id:"minecraft:health_boost"}].amplifier
execute store result score $prev_health_boost_dur ca.damage run data get entity @s active_effects[{id:"minecraft:health_boost"}].duration

scoreboard players operation $prev_health_boost_dur ca.damage /= $20 ca.CONSTANT
execute if score $prev_health_boost_dur ca.damage matches 1.. run scoreboard players operation $prev_health_boost_health ca.damage = $prev_health_boost_amp ca.damage
execute if score $prev_health_boost_dur ca.damage matches 1.. run scoreboard players add $prev_health_boost_health ca.damage 1
execute if score $prev_health_boost_dur ca.damage matches 1.. run scoreboard players operation $prev_health_boost_health ca.damage *= $40 ca.CONSTANT

effect give @s health_boost 1 127 true
attribute @s max_health modifier add ca.anti_health_boost -512 add_value

# get max health and current health
scoreboard players set $max_health ca.damage 0

scoreboard players set @s ca.actual_damage 0

scoreboard players operation @s ca.actual_damage += @s ca.damage
attribute @s minecraft:max_health modifier remove ca.heal_set_hp
execute store result score $max_health ca.damage run attribute @s minecraft:max_health get 10
execute store result score $max_health_test ca.damage run attribute @s minecraft:max_health get 10
execute store result score $current_health ca.damage run data get entity @s Health 10


#add the values of max health into the max health properties
scoreboard players operation $max_health ca.damage += $prev_health_boost_health ca.damage
scoreboard players operation $max_health_test ca.damage += $prev_health_boost_health ca.damage


#Get the percentage mult that has been applied to the player's health
function cartographer_core:helper/damage_player/get_attributes/master

scoreboard players operation $max_health ca.damage -= @s ca.actual_damage
scoreboard players operation $max_health ca.damage -= $current_health ca.damage

# if this damage will fully damage the player, no need to modify attributes. Deal 1024 true damage to the player so that it procs a totem.
execute if score $max_health ca.damage matches ..0 run return run function cartographer_core:helper/damage_player/full_kill

#set up and run the macro
execute store result storage central:damage var1 double -0.1 run scoreboard players get $max_health ca.damage
execute store result storage central:damage var2 double 0.01 run scoreboard players get $health_factor ca.damage
function cartographer_core:helper/damage_player/funny_matrix with storage central:damage

function cartographer_core:helper/damage_player/set_hp with storage central:damage amount

#damage the health then prepare to remove the attribute modifier
effect give @s minecraft:instant_health 1 28 true
scoreboard players set @s ca.custom_damaged 1

effect clear @s health_boost
attribute @s max_health modifier remove ca.anti_health_boost

execute if score $prev_health_boost_dur ca.damage matches 1.. store result storage central:damage hb_dur int 1 run scoreboard players get $prev_health_boost_dur ca.damage
execute if score $prev_health_boost_dur ca.damage matches 1.. store result storage central:damage hb_amp int 1 run scoreboard players get $prev_health_boost_amp ca.damage
execute if score $prev_health_boost_dur ca.damage matches 1.. run function cartographer_core:helper/damage_player/return_hb with storage central:damage

scoreboard players set @s ca.damage 0