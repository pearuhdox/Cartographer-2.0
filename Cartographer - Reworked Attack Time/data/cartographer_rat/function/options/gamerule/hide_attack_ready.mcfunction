
scoreboard players set $hide_attack_ready ca.gamerule 0
execute if score @s ca.options_trig matches 4011 run scoreboard players set $hide_attack_ready ca.gamerule 1

execute if score $hide_attack_ready ca.gamerule matches 1.. run tellraw @s {"color":"green","text":"Hide Attack Indicator has been Enabled!"}
execute unless score $hide_attack_ready ca.gamerule matches 1.. run tellraw @s {"color":"red","text":"Hide Attack Indicator has been Disabled!"}

scoreboard players set @s ca.options_trig 0
function cartographer_rat:options/show/gamerule/hide_attack_ready