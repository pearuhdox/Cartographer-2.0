scoreboard players set $swimming_is_sprinting ca.gamerule 0

tellraw @s {"color":"red","text":"Swim Hit Is Crit has been Disabled!"}

scoreboard players enable @s ca.options_trig
function cartographer_core:options/show/gamerule/swimming_is_sprinting