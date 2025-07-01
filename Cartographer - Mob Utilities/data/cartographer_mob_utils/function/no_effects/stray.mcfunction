effect clear @s slowness

execute if entity @s[tag=ca.has_slowness] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.slowness_dur
execute if entity @s[tag=ca.has_slowness] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:slowness"
execute if entity @s[tag=ca.has_slowness] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/stray