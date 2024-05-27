execute store result score $effect_old_percentage ca.merge_var run data get storage carto_event old.parameters.percentage 100
execute store result score $effect_new_percentage ca.merge_var run data get storage carto_event new.parameters.percentage 100

execute unless score $effect_old_percentage ca.merge_var < $effect_new_percentage ca.merge_var run data modify storage carto_event new.parameters.percentage set from storage carto_event old.parameters.percentage
execute unless score $effect_old_percentage ca.merge_var <= $effect_new_percentage ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration