effect clear @s levitation

execute if entity @s[tag=ca.has_levitation] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.levitation_dur
execute if entity @s[tag=ca.has_levitation] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:levitation"
execute if entity @s[tag=ca.has_levitation] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/shulker