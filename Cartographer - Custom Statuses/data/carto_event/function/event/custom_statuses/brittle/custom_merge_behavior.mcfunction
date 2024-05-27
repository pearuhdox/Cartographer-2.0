execute store result score $effect_old_damage ca.merge_var run data get storage carto_event old.parameters.damage 100
execute store result score $effect_new_damage ca.merge_var run data get storage carto_event new.parameters.damage 100

execute store result score $effect_old_threshold ca.merge_var run data get storage carto_event old.parameters.threshold 100
execute store result score $effect_new_threshold ca.merge_var run data get storage carto_event new.parameters.threshold 100

execute store result score $effect_old_range ca.merge_var run data get storage carto_event old.parameters.range 100
execute store result score $effect_new_range ca.merge_var run data get storage carto_event new.parameters.range 100

execute store result score $effect_old_fail_percent ca.merge_var run data get storage carto_event old.parameters.fail_percent 100
execute store result score $effect_new_fail_percent ca.merge_var run data get storage carto_event new.parameters.fail_percent 100

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute if score $effect_old_threshold ca.merge_var < $effect_new_threshold ca.merge_var run data modify storage carto_event new.parameters.threshold set from storage carto_event old.parameters.threshold

execute unless score $effect_old_damage ca.merge_var < $effect_new_damage ca.merge_var run data modify storage carto_event new.parameters.damage set from storage carto_event old.parameters.damage
execute unless score $effect_old_range ca.merge_var < $effect_new_range ca.merge_var run data modify storage carto_event new.parameters.range set from storage carto_event old.parameters.range
execute unless score $effect_old_fail_percent ca.merge_var < $effect_new_fail_percent ca.merge_var run data modify storage carto_event new.parameters.fail_percent set from storage carto_event old.parameters.fail_percent

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration