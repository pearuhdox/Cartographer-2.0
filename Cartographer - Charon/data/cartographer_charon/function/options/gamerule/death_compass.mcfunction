
scoreboard players set $give_compass charon.gmr 0
execute if score @s ca.options_trig matches 3051 run scoreboard players set $give_compass charon.gmr 1

execute if score $give_compass charon.gmr matches 1.. run tellraw @s {"color":"green","text":"Death Compass has been Enabled!"}
execute unless score $give_compass charon.gmr matches 1.. run tellraw @s {"color":"red","text":"Death Compass has been Disabled!"}

scoreboard players set @s ca.options_trig 0
function cartographer_charon:options/show/gamerule/death_compass