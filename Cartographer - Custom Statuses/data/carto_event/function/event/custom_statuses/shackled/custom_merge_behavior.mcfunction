execute store result score $effect_old_percentage ca.merge_var run data get storage carto_event old.parameters.percentage 100
execute store result score $effect_new_percentage ca.merge_var run data get storage carto_event new.parameters.percentage 100

execute store result score $effect_old_range ca.merge_var run data get storage carto_event old.parameters.range 100
execute store result score $effect_new_range ca.merge_var run data get storage carto_event new.parameters.range 100

execute store result score $effect_old_targets ca.merge_var run data get storage carto_event old.parameters.targets 100
execute store result score $effect_new_targets ca.merge_var run data get storage carto_event new.parameters.targets 100

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1


execute if score $effect_new_percentage ca.merge_var < $effect_old_percentage ca.merge_var run data modify storage carto_event new.parameters.percentage set from storage carto_event old.parameters.percentage
execute if score $effect_new_range ca.merge_var < $effect_old_range ca.merge_var run data modify storage carto_event new.parameters.range set from storage carto_event old.parameters.range
execute if score $effect_new_targets ca.merge_var < $effect_old_targets ca.merge_var run data modify storage carto_event new.parameters.targets set from storage carto_event old.parameters.targets

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration