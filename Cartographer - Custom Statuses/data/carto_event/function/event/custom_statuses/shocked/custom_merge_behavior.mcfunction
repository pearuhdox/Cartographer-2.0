execute store result score $effect_old_tick_rate ca.merge_var run data get storage carto_event old.parameters.tick_rate 1
execute store result score $effect_new_tick_rate ca.merge_var run data get storage carto_event new.parameters.tick_rate 1

execute store result score $effect_old_damage ca.merge_var run data get storage carto_event old.parameters.damage 1
execute store result score $effect_new_damage ca.merge_var run data get storage carto_event new.parameters.damage 1

execute store result score $effect_old_targets ca.merge_var run data get storage carto_event old.parameters.targets 1
execute store result score $effect_new_targets ca.merge_var run data get storage carto_event new.parameters.targets 1

execute store result score $effect_old_range ca.merge_var run data get storage carto_event old.parameters.range 1
execute store result score $effect_new_range ca.merge_var run data get storage carto_event new.parameters.range 1

execute store result score $effect_old_chain ca.merge_var run data get storage carto_event old.parameters.chain 1
execute store result score $effect_new_chain ca.merge_var run data get storage carto_event new.parameters.chain 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1


execute if score $effect_old_tick_rate ca.merge_var < $effect_new_tick_rate ca.merge_var run data modify storage carto_event new.parameters.tick_rate set from storage carto_event old.parameters.tick_rate

execute if score $effect_new_damage ca.merge_var < $effect_old_damage ca.merge_var run data modify storage carto_event new.parameters.damage set from storage carto_event old.parameters.damage
execute if score $effect_new_targets ca.merge_var < $effect_old_targets ca.merge_var run data modify storage carto_event new.parameters.targets set from storage carto_event old.parameters.targets
execute if score $effect_new_range ca.merge_var < $effect_old_range ca.merge_var run data modify storage carto_event new.parameters.range set from storage carto_event old.parameters.range
execute if score $effect_new_chain ca.merge_var < $effect_old_chain ca.merge_var run data modify storage carto_event new.parameters.chain set from storage carto_event old.parameters.chain

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration