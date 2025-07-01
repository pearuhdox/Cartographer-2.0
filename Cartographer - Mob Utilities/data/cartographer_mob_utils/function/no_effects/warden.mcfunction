effect clear @s darkness

execute if entity @s[tag=ca.has_darkness] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.darkness_dur
execute if entity @s[tag=ca.has_darkness] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:darkness"
execute if entity @s[tag=ca.has_darkness] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/warden