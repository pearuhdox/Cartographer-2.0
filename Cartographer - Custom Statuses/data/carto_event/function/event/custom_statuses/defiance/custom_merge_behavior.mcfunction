execute store result score $effect_health_floor ca.merge_var run data get storage carto_event old.parameters.health_floor 1
execute store result score $effect_health_floor ca.merge_var run data get storage carto_event new.parameters.health_floor 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute store result score $effect_old_immunity_time ca.merge_var run data get storage carto_event old.parameters.immunity_time 1
execute store result score $effect_new_immunity_time ca.merge_var run data get storage carto_event new.parameters.immunity_time 1

execute store result score $effect_old_bailout ca.merge_var run data get storage carto_event old.parameters.bailout 1
execute store result score $effect_new_bailout ca.merge_var run data get storage carto_event new.parameters.bailout 1

execute if score $effect_new_health_floor ca.merge_var < $effect_old_health_floor ca.merge_var run data modify storage carto_event new.health_floor set from storage carto_event old.health_floor
execute if score $effect_new_immunity_time ca.merge_var < $effect_old_immunity_time ca.merge_var run data modify storage carto_event new.immunity_time set from storage carto_event old.immunity_time

execute if score $effect_new_bailout ca.merge_var < $effect_old_bailout ca.merge_var run data modify storage carto_event new.bailout set from storage carto_event old.bailout

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration