effect clear @s mining_fatigue

execute if entity @s[tag=ca.has_mining_fatigue] store result storage cartographer_mob_utils:effects duration int 1 run scoreboard players get @s ca.mining_fatigue_dur
execute if entity @s[tag=ca.has_mining_fatigue] store result storage cartographer_mob_utils:effects amplifier int 1 run scoreboard players get @s ca.mining_fatigue_amp
execute if entity @s[tag=ca.has_mining_fatigue] run data modify storage cartographer_mob_utils:effects effect set value "minecraft:mining_fatigue"
execute if entity @s[tag=ca.has_mining_fatigue] run function cartographer_mob_utils:no_effects/helper/reapply_effect_amp with storage cartographer_mob_utils:effects

advancement revoke @s only cartographer_mob_utils:no_effects/elder_guardian