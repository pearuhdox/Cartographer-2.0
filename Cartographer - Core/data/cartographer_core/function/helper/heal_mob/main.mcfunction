
#Get current health and scale * 100
execute store result score $md.health ca.heal run data get entity @s Health 100
scoreboard players operation @s ca.heal *= $100 ca.CONSTANT

#Heal the mob
execute store result entity @s Health float 0.01 run scoreboard players operation $md.health ca.heal += @s ca.heal

#Set heal queue to 0.
scoreboard players set @s ca.heal 0
