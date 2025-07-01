effect clear @s dolphins_grace

execute if entity @s[tag=ca.has_dolphins_grace] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.dolphins_dur
execute if entity @s[tag=ca.has_dolphins_grace] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:dolphins_grace"
execute if entity @s[tag=ca.has_dolphins_grace] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/dolphin