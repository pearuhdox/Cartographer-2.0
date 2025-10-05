
scoreboard players set $void_ruleset ca.gamerule 0
execute if score @s ca.options_trig matches 3321 run scoreboard players set $fixed_home charon.gmr 0
execute if score @s ca.options_trig matches 3322 run scoreboard players set $fixed_home charon.gmr 1
execute if score @s ca.options_trig matches 3323 run scoreboard players set $fixed_home charon.gmr 2

execute if score $fixed_home charon.gmr matches 0 run tellraw @s {"color":"red","text":"Void Home Ruleset Disabled!"}
execute if score $fixed_home charon.gmr matches 1 run tellraw @s {"color":"dark_aqua","text":"Void Home Ruleset set to Only Void Deaths!"}
execute if score $fixed_home charon.gmr matches 2 run tellraw @s {"color":"dark_aqua","text":"Void Home Ruleset set to All Deaths!"}

scoreboard players set @s ca.options_trig 0
function cartographer_charon:options/show/gamerule/void_settings/home_ruleset