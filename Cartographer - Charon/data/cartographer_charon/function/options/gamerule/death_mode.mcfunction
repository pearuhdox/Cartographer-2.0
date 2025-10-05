scoreboard players set $death_drop charon.gmr 0
scoreboard players set $trader charon.gmr 0
scoreboard players set $collector charon.gmr 0
scoreboard players set $cage charon.gmr 0
scoreboard players set $burnout charon.gmr 0

execute if score @s ca.options_trig matches 3011 run scoreboard players set $death_drop charon.gmr 1
execute if score @s ca.options_trig matches 3012 run scoreboard players set $trader charon.gmr 1
execute if score @s ca.options_trig matches 3013 run scoreboard players set $collector charon.gmr 1
execute if score @s ca.options_trig matches 3014 run scoreboard players set $cage charon.gmr 1
execute if score @s ca.options_trig matches 3015 run scoreboard players set $burnout charon.gmr 1

execute if score $death_drop charon.gmr matches 1 run tellraw @s {"color":"dark_aqua","text":"Death Mode set to Death Drop!"}
execute if score $trader charon.gmr matches 1 run tellraw @s {"color":"dark_aqua","text":"Death Mode set to Trader!"}
execute if score $collector charon.gmr matches 1 run tellraw @s {"color":"dark_aqua","text":"Death Mode set to Collector!"}
execute if score $cage charon.gmr matches 1 run tellraw @s {"color":"dark_aqua","text":"Death Mode set to Cage!"}
execute if score $burnout charon.gmr matches 1 run tellraw @s {"color":"dark_aqua","text":"Death Mode set to Burnout!"}

scoreboard players set @s ca.options_trig 0
function cartographer_charon:options/show/gamerule/death_mode