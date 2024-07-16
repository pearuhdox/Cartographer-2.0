execute store result score $effect_old_heal_amount ca.merge_var run data get storage carto_event old.parameters.heal_amount 100
execute store result score $effect_new_heal_amount ca.merge_var run data get storage carto_event new.parameters.heal_amount 100

execute store result score $effect_old_sat_amount ca.merge_var run data get storage carto_event old.parameters.sat_amount 100
execute store result score $effect_new_sat_amount ca.merge_var run data get storage carto_event new.parameters.sat_amount 100

execute store result score $effect_old_abs_amount ca.merge_var run data get storage carto_event old.parameters.abs_amount 100
execute store result score $effect_new_abs_amount ca.merge_var run data get storage carto_event new.parameters.abs_amount 100

execute store result score $effect_old_abs_seconds ca.merge_var run data get storage carto_event old.parameters.abs_seconds 100
execute store result score $effect_new_abs_seconds ca.merge_var run data get storage carto_event new.parameters.abs_seconds 100

execute store result score $effect_old_abs_cap ca.merge_var run data get storage carto_event old.parameters.abs_cap 100
execute store result score $effect_new_abs_cap ca.merge_var run data get storage carto_event new.parameters.abs_cap 100

execute store result score $effect_old_time ca.merge_var run data get storage carto_event old.parameters.time 100
execute store result score $effect_new_time ca.merge_var run data get storage carto_event new.parameters.time 100

execute store result score $effect_old_treat_range ca.merge_var run data get storage carto_event old.parameters.treat_range 100
execute store result score $effect_new_treat_range ca.merge_var run data get storage carto_event new.parameters.treat_range 100

execute store result score $effect_old_treat_targets ca.merge_var run data get storage carto_event old.parameters.treat_targets 100
execute store result score $effect_new_treat_targets ca.merge_var run data get storage carto_event new.parameters.treat_targets 100

execute store result score $effect_old_fail_percent ca.merge_var run data get storage carto_event old.parameters.fail_percent 100
execute store result score $effect_new_fail_percent ca.merge_var run data get storage carto_event new.parameters.fail_percent 100

execute store result score $effect_old_execute ca.merge_var run data get storage carto_event old.parameters.execute 100
execute store result score $effect_new_execute ca.merge_var run data get storage carto_event new.parameters.execute 100

execute if score $effect_old_block_duration ca.merge_var < $effect_new_block_duration ca.merge_var run data modify storage carto_event new.parameters.block_duration set from storage carto_event old.parameters.block_duration

execute if score $effect_new_heal_amount ca.merge_var < $effect_old_heal_amount ca.merge_var run data modify storage carto_event new.parameters.heal_amount set from storage carto_event old.parameters.heal_amount
execute if score $effect_new_sat_amount ca.merge_var < $effect_old_sat_amount ca.merge_var run data modify storage carto_event new.parameters.sat_amount set from storage carto_event old.parameters.sat_amount
execute if score $effect_new_abs_amount ca.merge_var < $effect_old_abs_amount ca.merge_var run data modify storage carto_event new.parameters.abs_amount set from storage carto_event old.parameters.abs_amount
execute if score $effect_new_abs_seconds ca.merge_var < $effect_old_abs_seconds ca.merge_var run data modify storage carto_event new.parameters.abs_seconds set from storage carto_event old.parameters.abs_seconds
execute if score $effect_new_abs_cap ca.merge_var < $effect_old_abs_cap ca.merge_var run data modify storage carto_event new.parameters.abs_cap set from storage carto_event old.parameters.abs_cap
execute if score $effect_new_time ca.merge_var < $effect_old_time ca.merge_var run data modify storage carto_event new.parameters.time set from storage carto_event old.parameters.time
execute if score $effect_new_treat_range ca.merge_var < $effect_old_treat_range ca.merge_var run data modify storage carto_event new.parameters.treat_range set from storage carto_event old.parameters.treat_range
execute if score $effect_new_treat_targets ca.merge_var < $effect_old_treat_targets ca.merge_var run data modify storage carto_event new.parameters.treat_targets set from storage carto_event old.parameters.treat_targets
execute if score $effect_new_fail_percent ca.merge_var < $effect_old_fail_percent ca.merge_var run data modify storage carto_event new.parameters.fail_percent set from storage carto_event old.parameters.fail_percent
execute if score $effect_new_execute ca.merge_var < $effect_old_execute ca.merge_var run data modify storage carto_event new.parameters.execute set from storage carto_event old.parameters.execute


execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration