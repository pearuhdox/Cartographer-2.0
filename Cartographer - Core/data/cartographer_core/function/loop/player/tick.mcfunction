#Quick Drop Shulker Box System
function cartographer_core:systems/quick_drop/shulker/tick
#End of Quick Drop Shulker Box System

execute if score @s ca.glass_cdl matches 1.. run scoreboard players remove @s ca.glass_cdl 1

execute if entity @s[tag=!ca.init] run function cartographer_core:load/init_player

execute unless score @s ca.player_id matches 1.. run function cartographer_core:helper/player_id/assign

execute if score @s ca.core_delay_check matches 1.. run scoreboard players remove @s ca.core_delay_check 1
execute if entity @s[tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:helper/inventory/do_inventory_check

#Check Inspector When Inventory Updates
execute if entity @s[tag=ca.core_check_inv] run function cartographer_core:systems/inspector/find_slot

#Reduce Combat Score and Attack Speed Handler Calcs - Do these before running player effects
execute if score @s ca.combat_score matches 1.. run scoreboard players remove @s ca.combat_score 1
execute if score @s ca.attack_cooldown_remaining matches 1.. run function cartographer_core:handlers/attack_speed/tick

#Run Death Check Handler
execute if score @s ca.death_check matches 1.. run function cartographer_core:handlers/death_check/dies
execute if score @s ca.death_time matches 2 run function cartographer_core:handlers/death_check/respawn
execute if score @s ca.death_check matches 1.. run scoreboard players set @s ca.death_check 0

function cartographer_custom_enchantments:loop/tick/player
function cartographer_custom_statuses:loop/tick/player
function cartographer_mob_abilities:loop/tick/player
function cartographer_mimics:loop/tick/player
function cartographer_repair_stations:loop/tick/player

#Remove the inventory check from core here so it can be used in other functionality
execute unless score @s ca.core_delay_check matches 1.. run tag @s remove ca.core_check_inv

#Enable triggers
scoreboard players enable @s menu
scoreboard players enable @s give_dev_box

#Test if triggers are activated.
execute if score @s menu matches 1.. run function cartographer_core:load/reload/full
execute if score @s give_dev_box matches 1.. run function cartographer_core:give_dev_box

#Check if the player used the options menu
execute if score @s ca.options_trig matches 1.. run function cartographer_core:options/player/trigger

#Reduce the interal attack timer system scores.
execute if score @s ca.atk_time matches 1.. run scoreboard players remove @s ca.atk_time 1
execute if score @s ca.atk_time_true matches 1.. run scoreboard players remove @s ca.atk_time_true 1

#Run anvil and grindstone destruction
execute if score $no_anvil ca.gamerule matches 1 if score @s ca.use_anvil matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function cartographer_core:systems/disables/anvil/tick
execute if score $no_grindstone ca.gamerule matches 1 if score @s ca.use_grind matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function cartographer_core:systems/disables/grindstone/tick


#Do Checks for Player created projectiles.
execute if score @s ca.shoot_bow matches 1.. run function cartographer_core:helper/tag_player_projectile
execute if score @s ca.shoot_cross matches 1.. run function cartographer_core:helper/tag_player_projectile
execute if score @s ca.throw_trident matches 1.. run function cartographer_core:helper/tag_player_projectile

#Custom Absorption Handler Reset
execute unless predicate cartographer_core:potion_effect/has_absorption if entity @s[tag=ca.carto_abs_applied] run function cartographer_core:handlers/absorption/reset

#Resets
scoreboard players set @s ca.use_lectern 0

scoreboard players set @s[scores={ca.sprint=6..}] ca.sprint 5
scoreboard players remove @s[scores={ca.sprint=1..}] ca.sprint 1
scoreboard players set @s[scores={ca.walk=6..}] ca.walk 5
scoreboard players remove @s[scores={ca.walk=1..}] ca.walk 1
scoreboard players set @s[scores={ca.swim=6..}] ca.swim 5
scoreboard players remove @s[scores={ca.swim=1..}] ca.swim 1
scoreboard players set @s[scores={ca.water_walk=201..}] ca.water_walk 200
scoreboard players remove @s[scores={ca.water_walk=5..}] ca.water_walk 5
scoreboard players set @s ca.sneak 0
scoreboard players set @s ca.jump 0

#Reduce Delta Cooldown Time
execute if score @s ca.delta.cooldown matches 1.. run scoreboard players remove @s ca.delta.cooldown 1
execute unless score @s ca.delta.cooldown matches 0.. run scoreboard players set @s ca.delta.cooldown 0


#Reset Draw/Load/Use Timers and Booleans
execute if score @s ca.is_drawing_bow matches 0 run scoreboard players set @s ca.draw_bow_time 0
execute if score @s ca.is_loading_crossbow matches 0 run scoreboard players set @s ca.load_crossbow_time 0
execute if score @s ca.is_using_eye matches 0 run scoreboard players set @s ca.hold_shield_time 0
execute if score @s ca.is_holding_shield matches 0 run scoreboard players set @s ca.aim_trident_time 0
execute if score @s ca.is_aiming_trident matches 0 run scoreboard players set @s ca.use_eye_time 0
execute if score @s ca.is_using_other matches 0 run scoreboard players set @s ca.use_other_time 0

execute if score @s ca.is_drawing_bow matches 1.. run function cartographer_core:handlers/using/calls/drawing_bow
execute if score @s ca.is_loading_crossbow matches 1.. run function cartographer_core:handlers/using/calls/loading_crossbow
execute if score @s ca.is_using_eye matches 1.. run function cartographer_core:handlers/using/calls/using_eye
execute if score @s ca.is_holding_shield matches 1.. run function cartographer_core:handlers/using/calls/holding_shield
execute if score @s ca.is_aiming_trident matches 1.. run function cartographer_core:handlers/using/calls/aiming_trident
execute if score @s ca.is_using_other matches 1.. run function cartographer_core:handlers/using/calls/using_other

execute if score @s ca.draw_bow_time matches 1.. run scoreboard players remove @s ca.draw_bow_time 1
execute if score @s ca.load_crossbow_time matches 1.. run scoreboard players remove @s ca.load_crossbow_time 1
execute if score @s ca.hold_shield_time matches 1.. run scoreboard players remove @s ca.hold_shield_time 1
execute if score @s ca.aim_trident_time matches 1.. run scoreboard players remove @s ca.aim_trident_time 1
execute if score @s ca.use_eye_time matches 1.. run scoreboard players remove @s ca.use_eye_time 1
execute if score @s ca.use_other_time matches 1.. run scoreboard players remove @s ca.use_other_time 1

execute if score @s ca.use_carrot_on_stick matches 1.. run function cartographer_core:handlers/using/calls/use_cos
execute if score @s ca.use_warped_fungus_on_stick matches 1.. run function cartographer_core:handlers/using/calls/use_wfos

execute if entity @s[tag=ca.ate_food_check] run function cartographer_core:handlers/using/calls/ate_food

execute if score @s ca.use_bow matches 1.. run function cartographer_core:handlers/using/calls/use_bow
execute if score @s ca.use_crossbow matches 1.. run function cartographer_core:handlers/using/calls/use_crossbow
execute if score @s ca.use_trident matches 1.. unless score @s ca.deal_damage_melee_normal matches 1.. unless score @s ca.deal_damage_melee_absorption matches 1.. unless score @s ca.deal_damage_melee_resistance matches 1.. run function cartographer_core:handlers/using/calls/use_trident

execute if score @s ca.use_splash_potion matches 1.. run function cartographer_core:handlers/using/calls/use_splash_potion
execute if score @s ca.use_lingering_potion matches 1.. run function cartographer_core:handlers/using/calls/use_lingering_potion
execute if score @s ca.use_snowball matches 1.. run function cartographer_core:handlers/using/calls/use_snowball



scoreboard players set @s ca.use_trident 0
scoreboard players set @s ca.use_carrot_on_stick 0
scoreboard players set @s ca.use_warped_fungus_on_stick 0

scoreboard players set @s ca.use_splash_potion 0
scoreboard players set @s ca.use_lingering_potion 0
scoreboard players set @s ca.use_snowball 0

scoreboard players set @s ca.deal_damage_melee_normal 0
scoreboard players set @s ca.deal_damage_melee_absorption 0
scoreboard players set @s ca.deal_damage_melee_resistance 0