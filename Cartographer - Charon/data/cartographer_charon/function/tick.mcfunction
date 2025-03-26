#Cancel functionality unless a mode is selected
execute unless score $death_drop charon.gmr matches 1.. unless score $cage charon.gmr matches 1.. unless score $trader charon.gmr matches 1.. unless score $collector charon.gmr matches 1.. run return 0

scoreboard players set $dead_player dt.var 0
execute as @a if score @s dt.respawn matches 0..10 run scoreboard players set $dead_player dt.var 1

execute as @a at @s run function cartographer_charon:player_tick
execute as 00000001-0000-0007-0000-001b0000000b at @s if entity @a[distance=..10] run function cartographer_charon:vill/tick

#Running Shades - Not done on event handler because they have to run every tick, and need to not fail if unloaded
execute if score $shades_active dt.var matches 1.. as @e[type=allay,tag=charon.multiplayer_shade] at @s run function cartographer_charon:multiplayer/tick
execute if score $shades_active dt.var matches ..-1 run scoreboard players set $shades_active dt.var 0

#Running Cages - Also not done on event handler because they have to run every tick
execute if score $cages_active dt.var matches 1.. as @e[type=armor_stand,tag=ca.item_cage] at @s run function cartographer_charon:cage/cage_tick
execute if score $cages_active dt.var matches ..-1 run scoreboard players set $cages_active dt.var 0

#Run this for the trader animations
execute if score $trader charon.gmr matches 1.. as 00000007-0000-0001-0000-000b0000001b at @s if entity @a[distance=..32] run function cartographer_charon:trader/animations