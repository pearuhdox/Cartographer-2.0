effect clear @s blindness

execute if entity @s[tag=ca.has_blindness] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.blindness_dur
execute if entity @s[tag=ca.has_blindness] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:blindness"
execute if entity @s[tag=ca.has_blindness] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/illusioner