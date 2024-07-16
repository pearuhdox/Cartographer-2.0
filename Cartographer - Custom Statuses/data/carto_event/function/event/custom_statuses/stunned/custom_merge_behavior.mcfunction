execute store result score $effect_old_dazed_time ca.merge_var run data get storage carto_event old.parameters.dazed_time 100
execute store result score $effect_new_dazed_time ca.merge_var run data get storage carto_event new.parameters.dazed_time 100

execute store result score $effect_old_block_duration ca.merge_var run data get storage carto_event old.parameters.block_duration 100
execute store result score $effect_new_block_duration ca.merge_var run data get storage carto_event new.parameters.block_duration 100

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute if score $effect_old_block_duration ca.merge_var < $effect_new_block_duration ca.merge_var run data modify storage carto_event new.parameters.block_duration set from storage carto_event old.parameters.block_duration

execute if score $effect_new_dazed_time ca.merge_var < $effect_old_dazed_time ca.merge_var run data modify storage carto_event new.parameters.dazed_time set from storage carto_event old.parameters.damage_multiplier


execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration