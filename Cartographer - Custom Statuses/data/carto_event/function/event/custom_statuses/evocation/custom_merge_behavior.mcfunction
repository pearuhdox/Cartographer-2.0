#Effect 1 is damage
execute store result score $effect_old_damage ca.merge_var run data get storage carto_event old.parameters.damage 1
execute store result score $effect_new_damage ca.merge_var run data get storage carto_event new.parameters.damage 1

#Effect 2 is targets
execute store result score $effect_old_targets ca.merge_var run data get storage carto_event old.parameters.targets 1
execute store result score $effect_new_targets ca.merge_var run data get storage carto_event new.parameters.targets 1

#Effect 3 is range
execute store result score $effect_old_range ca.merge_var run data get storage carto_event old.parameters.range 1
execute store result score $effect_new_range ca.merge_var run data get storage carto_event new.parameters.range 1

#Duration
execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

#Raise cap if new cap is higher
scoreboard players operation $effect_old_damage ca.merge_var > $effect_new_damage ca.merge_var
scoreboard players operation $effect_old_targets ca.merge_var > $effect_new_targets ca.merge_var
scoreboard players operation $effect_old_range ca.merge_var > $effect_new_range ca.merge_var


execute store result storage carto_event new.parameters.damage int 1 run scoreboard players get $effect_new_damage ca.merge_var
execute store result storage carto_event new.parameters.targets int 1 run scoreboard players get $effect_new_targets ca.merge_var
execute store result storage carto_event new.parameters.range int 1 run scoreboard players get $effect_new_range ca.merge_var

execute if score $effect_new_duration ca.merge_var > $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration