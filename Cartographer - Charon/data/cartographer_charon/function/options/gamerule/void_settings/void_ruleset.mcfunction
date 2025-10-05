
scoreboard players set $void_ruleset ca.gamerule 0
execute if score @s ca.options_trig matches 3311 run scoreboard players set $void_ruleset ca.gamerule 0
execute if score @s ca.options_trig matches 3312 run scoreboard players set $void_ruleset ca.gamerule 1
execute if score @s ca.options_trig matches 3313 run scoreboard players set $void_ruleset ca.gamerule 2

execute if score $void_ruleset ca.gamerule matches 0 run tellraw @s {"color":"dark_aqua","text":"Void Ruleset set to Execute!"}
execute if score $void_ruleset ca.gamerule matches 1 run tellraw @s {"color":"dark_aqua","text":"Void Ruleset set to Lift!"}
execute if score $void_ruleset ca.gamerule matches 2 run tellraw @s {"color":"dark_aqua","text":"Void Ruleset set to Return!"}


scoreboard players set @s ca.options_trig 0
function cartographer_charon:options/show/gamerule/void_settings/void_ruleset