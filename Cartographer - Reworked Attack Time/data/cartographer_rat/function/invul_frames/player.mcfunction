scoreboard players set $check ca.rat_dmg_taken 0

execute if score @s ca.rat_dmg_taken matches 1.. run scoreboard players set $check ca.rat_dmg_taken 1
execute if score @s ca.rat_dmg_resist matches 1.. run scoreboard players set $check ca.rat_dmg_taken 1
execute if score @s ca.rat_dmg_absorbed matches 1.. run scoreboard players set $check ca.rat_dmg_taken 1

execute if score $check ca.rat_dmg_taken matches 1.. unless score @s ca.invul_frames matches 1.. run scoreboard players set @s ca.invul_frames 10

scoreboard players set @s ca.rat_dmg_taken 0
scoreboard players set @s ca.rat_dmg_resist 0
scoreboard players set @s ca.rat_dmg_absorbed 0