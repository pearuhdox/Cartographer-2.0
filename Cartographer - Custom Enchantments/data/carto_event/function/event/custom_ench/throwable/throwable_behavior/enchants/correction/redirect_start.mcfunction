scoreboard players set @s ca.raycast 16
execute if score $type ca.ench_correction_lvl matches 1 facing entity @n[type=#cartographer_core:affected_by_carto,distance=..7,tag=!ca.corrected_check,tag=!ca.corrected_hit] eyes rotated ~ ~3 positioned ^ ^ ^0.5 run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/redirect_raycast
execute if score $type ca.ench_correction_lvl matches 2 facing entity @n[type=player,distance=..7,tag=!ca.corrected_check,tag=!ca.corrected_hit] eyes rotated ~ ~3 positioned ^ ^ ^0.5 run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/redirect_raycast

execute if score $type ca.ench_correction_lvl matches 1 as @n[type=#cartographer_core:affected_by_carto,distance=..7,tag=!ca.corrected_check,tag=!ca.corrected_hit] run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/tag_branch
execute if score $type ca.ench_correction_lvl matches 2 as @n[type=player,distance=..7,tag=!ca.corrected_check,tag=!ca.corrected_hit] run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/tag_branch

scoreboard players remove $attempts ca.ench_correction_lvl 1
execute if score $hit ca.ench_correction_lvl matches 1.. run scoreboard players set $attempts ca.ench_correction_lvl 0

execute if score $attempts ca.ench_correction_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throwable_behavior/enchants/correction/redirect_start