effect clear @s hunger

execute if entity @s[tag=ca.has_hunger] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.hunger_dur
execute if entity @s[tag=ca.has_hunger] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:hunger"
execute if entity @s[tag=ca.has_hunger] run function cartographer_mob_utils:no_effects/helper/reapply_effect with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/husk