execute store result score $effect_old_amount ca.merge_var run data get storage carto_event old.parameters.amount 1
execute store result score $effect_new_amount ca.merge_var run data get storage carto_event new.parameters.amount 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute unless score $effect_new_amount ca.merge_var < $effect_old_amount ca.merge_var run data modify storage carto_event new.parameters.amount set from storage carto_event old.parameters.amount

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration