scoreboard players set @s ca.raycast 20

function cartographer_charon:respawnable/raycast

execute if entity @s[tag=successful] at @s run function cartographer_charon:respawnable/effects

tag @s remove successful