scoreboard players set $swim_hit_is_crit ca.gamerule 0

tellraw @s {"color":"red","text":"Swim Hit Is Crit has been Disabled!"}

scoreboard players enable @s ca.options_trig
function cartographer_core:options/show/gamerule/swim_hit_is_crit