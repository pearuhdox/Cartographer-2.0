#Add 6 seconds of combat time to the player's score
scoreboard players add @s ca.combat_score 120

#Combat time maxes at 20 seconds
execute if score @s ca.combat_score matches 401.. run scoreboard players set @s ca.combat_score 400