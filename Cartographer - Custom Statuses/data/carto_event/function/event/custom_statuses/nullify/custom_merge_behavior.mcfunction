execute store result score $effect_old_cooldown ca.merge_var run data get storage carto_event old.parameters.cooldown 1
execute store result score $effect_new_cooldown ca.merge_var run data get storage carto_event new.parameters.cooldown 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute unless score $effect_new_cooldown ca.merge_var < $effect_old_cooldown ca.merge_var run data modify storage carto_event new.parameters.cooldown set from storage carto_event old.parameters.cooldown

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration

#Copy over old tick count every time
data modify storage carto_event new.parameters.tick_count set from storage carto_event old.parameters.tick_count