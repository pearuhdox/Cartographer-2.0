$execute if entity @s[tag=ca.player_owned] run particle trail{color:[0.729,0.804,1.000],target:[$(x),$(y),$(z)],duration:15} ~ ~ ~ 0.3 0.3 0.3 1 20 normal
$execute unless entity @s[tag=ca.player_owned] run particle trail{color:[1.000,0.816,0.749],target:[$(x),$(y),$(z)],duration:15} ~ ~ ~ 0.3 0.3 0.3 1 20 normal


execute at @s positioned ~ ~0.3 ~ rotated 0 0 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 45 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 90 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 135 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 180 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 225 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 270 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force
execute at @s positioned ~ ~0.3 ~ rotated 0 315 run particle minecraft:witch ^ ^ ^0.5 0 0 0 0 1 force

execute if entity @s[tag=ca.player_owned] run playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 0.5 0.85
execute unless entity @s[tag=ca.player_owned] run playsound minecraft:entity.puffer_fish.blow_out hostile @a ~ ~ ~ 0.5 0.85