scoreboard players set $swimming_is_sprinting ca.gamerule 1

tellraw @s {"color":"green","text":"Swim Hit Is Crit has been Enabled!"}

scoreboard players enable @s ca.options_trig
function cartographer_core:options/show/gamerule/swimming_is_sprinting