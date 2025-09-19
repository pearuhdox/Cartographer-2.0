execute if block ~ ~-0.6 ~ #cartographer_charon:unsafe_home_block run scoreboard players set @s dt.home_cooldown 4
execute unless block ~ ~-0.6 ~ #cartographer_charon:unsafe_home_block if block ~ ~ ~ #cartographer_core:can_raycast unless block ~ ~ ~ lava unless score @s dt.death matches 1.. if score @s dt.respawn matches 2.. unless score @s dt.home_cooldown matches 1.. run function cartographer_charon:void/home_set

execute unless score $death_disabled charon.gmr matches 1.. if score @s[tag=!watched_die_already] dt.death matches 1.. run function cartographer_charon:watches_you_die

#Moved this functionality to the Respawn Handler which is called by Core
#execute unless score $death_disabled charon.gmr matches 1.. if score @s dt.death matches 1.. if score @s dt.respawn matches 2 run function cartographer_charon:respawn
#execute if score $death_disabled charon.gmr matches 1.. if score @s dt.death matches 1.. run scoreboard players set @s dt.death 0


scoreboard players set $check_inv_bundle dt.var 0

execute unless score $check_inv_bundle dt.var matches 1.. if items entity @s hotbar.* bundle[minecraft:custom_data~{DeathBundle:1b}] run scoreboard players set $check_inv_bundle dt.var 1
execute unless score $check_inv_bundle dt.var matches 1.. if items entity @s inventory.* bundle[minecraft:custom_data~{DeathBundle:1b}] run scoreboard players set $check_inv_bundle dt.var 1
execute if score $check_inv_bundle dt.var matches 1.. run function cartographer_charon:bundle/master

execute if score @s ca.place_charon matches 1.. run function cartographer_charon:place/master

execute if score @s dt.home_cooldown matches 1.. run scoreboard players remove @s dt.home_cooldown 1

execute positioned ~ -165 ~ if entity @s[distance=..100] if entity @s[gamemode=!spectator] positioned as @s run function cartographer_charon:void/trigger_void_save

execute if score @s taxes.time matches 6001.. run function cartographer_charon:taxes/progressive/decrease

execute if score @s ca.charon_statue_cdl matches 1.. run scoreboard players remove @s ca.charon_statue_cdl 1