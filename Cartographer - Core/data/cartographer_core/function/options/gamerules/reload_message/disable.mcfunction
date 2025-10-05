scoreboard players set $gl_reload_msg ca.gamerule 1

tellraw @s {"color":"red","text":"Reload Message has been Disabled!"}

scoreboard players enable @s ca.options_trig
function cartographer_core:options/show/gamerule/reload_message