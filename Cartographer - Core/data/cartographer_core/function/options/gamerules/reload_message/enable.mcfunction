scoreboard players set $gl_reload_msg ca.gamerule 0

tellraw @s {"color":"green","text":"Reload Message has been Enabled!"}

scoreboard players enable @s ca.options_trig
function cartographer_core:options/show/gamerule/reload_message