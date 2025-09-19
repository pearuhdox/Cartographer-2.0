#Creeper Check Goes Here - Runs Specifically After the Events that check for Creeper Deaths
execute if score $creeper_check ca.systems matches 1.. as @e[type=marker,tag=ca.creeper_checker] at @s run function cartographer_core:handlers/checkers/creeper
execute if score $creeper_check ca.systems matches 1.. run scoreboard players remove $creeper_check ca.systems 1
