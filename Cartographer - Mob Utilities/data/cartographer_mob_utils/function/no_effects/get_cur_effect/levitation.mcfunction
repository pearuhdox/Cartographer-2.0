execute unless entity @s[tag=ca.has_done_effect_calc] run data modify storage cartographer_mob_utils:effects active_effects set value {}
execute unless entity @s[tag=ca.has_done_effect_calc] run data modify storage cartographer_mob_utils:effects active_effects set from entity @s active_effects
tag @s add ca.has_done_effect_calc

execute store result score @s ca.levitation_dur run data get storage cartographer_mob_utils:effects active_effects[{id:"minecraft:levitation"}].duration 0.05
