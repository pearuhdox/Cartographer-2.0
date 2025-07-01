effect clear @s wither

execute if entity @s[tag=ca.has_wither] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.wither_dur
execute if entity @s[tag=ca.has_wither] store result storage cartographer_mob_utils:effects amplifier int 1 run scoreboard players get @s ca.wither_amp
execute if entity @s[tag=ca.has_wither] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:wither"
execute if entity @s[tag=ca.has_wither] run function cartographer_mob_utils:no_effects/helper/reapply_effect_amp with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/wither