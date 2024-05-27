execute store result score $effect_old_tick_rate ca.merge_var run data get storage carto_event old.parameters.tick_rate 100
execute store result score $effect_new_tick_rate ca.merge_var run data get storage carto_event new.parameters.tick_rate 100

execute store result score $effect_old_damage ca.merge_var run data get storage carto_event old.parameters.damage 100
execute store result score $effect_new_damage ca.merge_var run data get storage carto_event new.parameters.damage 100

execute store result score $effect_old_warmup_time ca.merge_var run data get storage carto_event old.parameters.warmup_time 100
execute store result score $effect_new_warmup_time ca.merge_var run data get storage carto_event new.parameters.warmup_time 100

execute store result score $effect_old_cauterize_threshold ca.merge_var run data get storage carto_event old.parameters.cauterize_threshold 100
execute store result score $effect_new_cauterize_threshold ca.merge_var run data get storage carto_event new.parameters.cauterize_threshold 100

execute store result score $effect_old_cauterize_percent ca.merge_var run data get storage carto_event old.parameters.cauterize_percent 100
execute store result score $effect_new_cauterize_percent ca.merge_var run data get storage carto_event new.parameters.cauterize_percent 100

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute if score $effect_old_amt ca.merge_var < $effect_new_tick_rate ca.merge_var run data modify storage carto_event new.parameters.tick_rate set from storage carto_event old.parameters.tick_rate

execute if score $effect_new_damage ca.merge_var < $effect_old_damage ca.merge_var run data modify storage carto_event new.parameters.damage set from storage carto_event old.parameters.damage
execute if score $effect_new_warmup_time ca.merge_var < $effect_old_warmup_time ca.merge_var run data modify storage carto_event new.parameters.warmup_time set from storage carto_event old.parameters.warmup_time
execute if score $effect_new_cauterize_threshold ca.merge_var < $effect_old_cauterize_threshold ca.merge_var run data modify storage carto_event new.parameters.cauterize_threshold set from storage carto_event old.parameters.cauterize_threshold
execute if score $effect_new_cauterize_percent ca.merge_var < $effect_old_cauterize_percent ca.merge_var run data modify storage carto_event new.parameters.cauterize_percent set from storage carto_event old.parameters.cauterize_percent

execute if score $effect_new_wildfire_range ca.merge_var < $effect_old_wildfire_range ca.merge_var run data modify storage carto_event new.parameters.wildfire_range set from storage carto_event old.parameters.wildfire_range
execute if score $effect_new_wildfire_targets ca.merge_var < $effect_old_wildfire_targets ca.merge_var run data modify storage carto_event new.parameters.wildfire_targets set from storage carto_event old.parameters.wildfire_targets
execute if score $effect_new_wildfire_duration ca.merge_var < $effect_old_wildfire_duration ca.merge_var run data modify storage carto_event new.parameters.wildfire_duration set from storage carto_event old.parameters.wildfire_duration

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration