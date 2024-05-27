execute store result score $pt_1 ca.uuid_interact run data get entity @s UUID[0]
execute store result score $pt_2 ca.uuid_interact run data get entity @s UUID[1]
execute store result score $pt_3 ca.uuid_interact run data get entity @s UUID[2]
execute store result score $pt_4 ca.uuid_interact run data get entity @s UUID[3]

execute unless score @s ca.charon_statue_cdl matches 1.. as @e[type=interaction,tag=ca.charon_respawnable_interaction,distance=..5] at @s run function cartographer_charon:respawnable/interact/verify_left

advancement revoke @s only cartographer_charon:interact_statue/left