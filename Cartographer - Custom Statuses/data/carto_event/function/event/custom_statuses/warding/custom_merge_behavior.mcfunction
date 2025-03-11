execute store result score $effect_old_percent ca.merge_var run data get storage carto_event old.parameters.resistance_percent 1
execute store result score $effect_new_percent ca.merge_var run data get storage carto_event new.parameters.resistance_percent 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute store result score $effect_old_max_cascade ca.merge_var run data get storage carto_event old.parameters.max_cascade 1
execute store result score $effect_new_max_cascade ca.merge_var run data get storage carto_event new.parameters.max_cascade 1

execute store result score $effect_old_cascade_count ca.merge_var run data get storage carto_event old.parameters.cascade_count 1
execute store result score $effect_new_cascade_count ca.merge_var run data get storage carto_event new.parameters.cascade_count 1

execute store result score $effect_old_cascade_time ca.merge_var run data get storage carto_event old.parameters.cascade_time 1
execute store result score $effect_new_cascade_time ca.merge_var run data get storage carto_event new.parameters.cascade_time 1

execute unless score $effect_new_percent ca.merge_var > $effect_old_percent ca.merge_var run data modify storage carto_event new.parameters.amount set from storage carto_event old.parameters.amount

execute if score $effect_new_max_cascade ca.merge_var < $effect_old_max_cascade ca.merge_var run data modify storage carto_event new.max_cascade set from storage carto_event old.max_cascade
execute if score $effect_new_cascade_count ca.merge_var < $effect_old_cascade_count ca.merge_var run data modify storage carto_event new.cascade_count set from storage carto_event old.cascade_count
execute if score $effect_new_cascade_time ca.merge_var < $effect_old_cascade_time ca.merge_var run data modify storage carto_event new.cascade_time set from storage carto_event old.cascade_time

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration