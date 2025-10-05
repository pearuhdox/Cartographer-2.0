scoreboard players set $swim_hit_is_crit ca.gamerule 1

tellraw @s {"color":"green","text":"Swim Hit Is Crit has been Enabled!"}

scoreboard players enable @s ca.options_trig
function cartographer_core:options/show/gamerule/swim_hit_is_crit