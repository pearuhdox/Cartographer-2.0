execute store result score $effect_old_damage ca.merge_var run data get storage carto_event old.parameters.damage 100
execute store result score $effect_new_damage ca.merge_var run data get storage carto_event new.parameters.damage 100

execute store result score $effect_old_range ca.merge_var run data get storage carto_event old.parameters.range 100
execute store result score $effect_new_range ca.merge_var run data get storage carto_event new.parameters.range 100

execute store result score $effect_old_targets ca.merge_var run data get storage carto_event old.parameters.targets 100
execute store result score $effect_new_targets ca.merge_var run data get storage carto_event new.parameters.targets 100

execute store result score $effect_old_knockback ca.merge_var run data get storage carto_event old.parameters.knockback 100
execute store result score $effect_new_knockback ca.merge_var run data get storage carto_event new.parameters.knockback 100

execute store result score $effect_old_vertical_knockback ca.merge_var run data get storage carto_event old.parameters.vertical_knockback 100
execute store result score $effect_new_vertical_knockback ca.merge_var run data get storage carto_event new.parameters.vertical_knockback 100

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1


execute unless score $effect_old_damage ca.merge_var < $effect_new_damage ca.merge_var run data modify storage carto_event new.parameters.damage set from storage carto_event old.parameters.damage
execute unless score $effect_old_range ca.merge_var < $effect_new_range ca.merge_var run data modify storage carto_event new.parameters.range set from storage carto_event old.parameters.range
execute unless score $effect_old_targets ca.merge_var < $effect_new_targets ca.merge_var run data modify storage carto_event new.parameters.targets set from storage carto_event old.parameters.targets
execute unless score $effect_old_knockback ca.merge_var < $effect_new_knockback ca.merge_var run data modify storage carto_event new.parameters.knockback set from storage carto_event old.parameters.knockback
execute unless score $effect_old_vertical_knockback ca.merge_var < $effect_new_vertical_knockback ca.merge_var run data modify storage carto_event new.parameters.vertical_knockback set from storage carto_event old.parameters.vertical_knockback

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration