#Set the world difficulty to this constant.
execute store result score $core.difficulty ca.CONSTANT run difficulty

#Get Player Count
execute store result score $player_count ca.gamerule if entity @a

#Debug Code Line to Force Multiplayer Testing - LEAVE THIS DISABLED
#scoreboard players set $player_count ca.gamerule 2

#Set Setup Mode to on if no acceptable value found
execute unless score $setup_mode ca.gamerule matches 0.. run scoreboard players set $setup_mode ca.gamerule 1

scoreboard players add $ca_timer ca.timer 1

#TIMERS - Modulo for past tick

#Half second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $10 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $half_sec ca.timer 1

#1 second
scoreboard players operation $ca_timer_mod_1 ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod_1 ca.timer %= $20 ca.CONSTANT
execute if score $ca_timer_mod_1 ca.timer matches 0 run scoreboard players set $1_sec ca.timer 1

#3 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $60 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $3_sec ca.timer 1

#5 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $100 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $5_sec ca.timer 1

#10 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $200 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $10_sec ca.timer 1

#15 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $300 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $15_sec ca.timer 1

#30 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $600 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $30_sec ca.timer 1

#60 second
scoreboard players operation $ca_timer_mod ca.timer = $ca_timer ca.timer
scoreboard players operation $ca_timer_mod ca.timer %= $1200 ca.CONSTANT
execute if score $ca_timer_mod ca.timer matches 0 run scoreboard players set $60_sec ca.timer 1


#Run all Cartographer Effects from Core Timers.
#function cartographer_charon:loop/tick/base
function cartographer_charon:tick
#function cartographer_custom_enchantments:loop/tick
#function cartographer_custom_statuses:loop/tick
#function cartographer_loot_additions:loop/tick
#function cartographer_mimics:loop/tick
#function cartographer_mob_abilities:loop/tick
function cartographer_repair_stations:loop/tick

execute unless score $value ca.player_id matches 0.. run scoreboard players set $value ca.player_id 0

#All Player Effects Run Here
execute as @a[predicate=cartographer_core:in_valid_dimension] at @s run function cartographer_core:loop/player/tick


# There are no entity ticking effects in Cartographer :) - Okay there is a couple
# Register any entity
execute as @e[type=!player,tag=!ca.registered] at @s run function cartographer_core:handlers/register/start

execute if score $projectile_check ca.systems matches 1.. as @e[type=marker,tag=ca.projectile_checker] at @s run function cartographer_core:handlers/checkers/projectile
execute if score $creeper_check ca.systems matches 1.. as @e[type=marker,tag=ca.creeper_checker] at @s run function cartographer_core:handlers/checkers/creeper

execute if score $projectile_check ca.systems matches 1.. run scoreboard players remove $projectile_check ca.systems 1
execute if score $creeper_check ca.systems matches 1.. run scoreboard players remove $creeper_check ca.systems 1

#Specifically reset logout score here as the last possible thing to ever be run
scoreboard players set @a ca.logout 0


#All Timer Flags are reset here
scoreboard players set $half_sec ca.timer 0
scoreboard players set $1_sec ca.timer 0
scoreboard players set $3_sec ca.timer 0
scoreboard players set $5_sec ca.timer 0
scoreboard players set $10_sec ca.timer 0
scoreboard players set $15_sec ca.timer 0
scoreboard players set $30_sec ca.timer 0
scoreboard players set $60_sec ca.timer 0