
scoreboard players set $multiplayer charon.gmr 0
execute if score @s ca.options_trig matches 3023 run scoreboard players set $multiplayer charon.gmr 1

execute if score $multiplayer charon.gmr matches 1.. run tellraw @s {"color":"green","text":"Multiplayer Shades has been Enabled!"}
execute unless score $multiplayer charon.gmr matches 1.. run tellraw @s {"color":"red","text":"Multiplayer Shades has been Disabled!"}

scoreboard players set @s ca.options_trig 0
function cartographer_charon:options/show/gamerule/multiplayer/shades