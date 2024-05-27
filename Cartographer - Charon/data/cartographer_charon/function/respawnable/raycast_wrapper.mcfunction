scoreboard players set $statue_success dt.var 0
execute if entity @a[gamemode=!spectator,distance=..6.5] run scoreboard players set $statue_success dt.var 1

execute if score $statue_success dt.var matches 1.. positioned ^ ^ ^2 run function cartographer_charon:respawnable/raycast_start