execute store result score $effect_old_tick_rate ca.merge_var run data get storage carto_event old.parameters.tick_rate 1
execute store result score $effect_new_tick_rate ca.merge_var run data get storage carto_event new.parameters.tick_rate 1

execute store result score $effect_old_amount ca.merge_var run data get storage carto_event old.parameters.amount 1
execute store result score $effect_new_amount ca.merge_var run data get storage carto_event new.parameters.amount 1

execute store result score $effect_old_cap ca.merge_var run data get storage carto_event old.parameters.cap 1
execute store result score $effect_new_cap ca.merge_var run data get storage carto_event new.parameters.cap 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1



execute if score $effect_old_tick_rate ca.merge_var < $effect_new_tick_rate ca.merge_var run data modify storage carto_event new.parameters.tick_rate set from storage carto_event old.parameters.tick_rate

execute if score $effect_new_amount ca.merge_var < $effect_old_amount ca.merge_var run data modify storage carto_event new.parameters.amount set from storage carto_event old.parameters.amount
execute if score $effect_new_cap ca.merge_var < $effect_old_cap ca.merge_var run data modify storage carto_event new.parameters.cap set from storage carto_event old.parameters.cap


execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration

#Copy over old tick count every time
data modify storage carto_event new.parameters.tick_count set from storage carto_event old.parameters.tick_count