effect clear @s poison

execute if entity @s[tag=ca.has_poison] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.poison_dur
execute if entity @s[tag=ca.has_poison] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:poison"
execute if entity @s[tag=ca.has_poison] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/bee