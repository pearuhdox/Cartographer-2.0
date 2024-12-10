scoreboard players set $type ca.ench_correction_lvl 0
execute if entity @s[tag=ca.player_owned] run scoreboard players set $type ca.ench_correction_lvl 1
execute unless entity @s[tag=ca.player_owned] run scoreboard players set $type ca.ench_correction_lvl 2

execute if score $type ca.ench_correction_lvl matches 1 if entity @e[type=#cartographer_core:affected_by_carto,distance=..7] run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/attempt
execute if score $type ca.ench_correction_lvl matches 2 if entity @a[distance=..7] run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/attempt