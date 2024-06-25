execute store result score $effect_old_cooldown ca.merge_var run data get storage carto_event old.parameters.cooldown 1
execute store result score $effect_new_cooldown ca.merge_var run data get storage carto_event new.parameters.cooldown 1

execute store result score $effect_old_scale ca.merge_var run data get storage carto_event old.parameters.scale 1
execute store result score $effect_new_scale ca.merge_var run data get storage carto_event new.parameters.scale 1

execute store result score $effect_old_crash_range ca.merge_var run data get storage carto_event old.parameters.crash_range 1
execute store result score $effect_new_crash_range ca.merge_var run data get storage carto_event new.parameters.crash_range 1

execute store result score $effect_old_crash_damage ca.merge_var run data get storage carto_event old.parameters.crash_damage 1
execute store result score $effect_new_crash_damage ca.merge_var run data get storage carto_event new.parameters.crash_damage 1

execute store result score $effect_old_crash_vertical_kb ca.merge_var run data get storage carto_event old.parameters.crash_vertical_kb 1
execute store result score $effect_new_crash_vertical_kb ca.merge_var run data get storage carto_event new.parameters.crash_vertical_kb 1

execute store result score $effect_old_crash_horizontal_kb ca.merge_var run data get storage carto_event old.parameters.crash_horizontal_kb 1
execute store result score $effect_new_crash_horizontal_kb ca.merge_var run data get storage carto_event new.parameters.crash_horizontal_kb 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration

execute if score $effect_new_cooldown ca.merge_var < $effect_old_cooldown ca.merge_var run data modify storage carto_event new.cooldown set from storage carto_event old.cooldown
execute if score $effect_new_scale ca.merge_var < $effect_old_scale ca.merge_var run data modify storage carto_event new.scale set from storage carto_event old.scale
execute if score $effect_new_crash_range ca.merge_var < $effect_old_crash_range ca.merge_var run data modify storage carto_event new.crash_range set from storage carto_event old.crash_range
execute if score $effect_new_crash_damage ca.merge_var < $effect_old_crash_damage ca.merge_var run data modify storage carto_event new.crash_damage set from storage carto_event old.crash_damage
execute if score $effect_new_crash_vertical_kb ca.merge_var < $effect_old_crash_vertical_kb ca.merge_var run data modify storage carto_event new.crash_vertical_kb set from storage carto_event old.crash_vertical_kb
execute if score $effect_new_crash_horizontal_kb ca.merge_var < $effect_old_crash_horizontal_kb ca.merge_var run data modify storage carto_event new.crash_horizontal_kb set from storage carto_event old.crash_horizontal_kb
