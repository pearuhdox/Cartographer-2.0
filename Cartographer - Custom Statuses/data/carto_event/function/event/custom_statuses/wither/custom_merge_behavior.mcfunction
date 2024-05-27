execute store result score $effect_old_amt ca.merge_var run data get storage carto_event old.parameters.tick_rate 1
execute store result score $effect_new_amt ca.merge_var run data get storage carto_event new.parameters.tick_rate 1

execute store result score $effect_old_amt_2 ca.merge_var run data get storage carto_event old.parameters.damage 1
execute store result score $effect_new_amt_2 ca.merge_var run data get storage carto_event new.parameters.damage 1


execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage carto_event new.parameters.tick_rate set from storage carto_event old.parameters.tick_rate
execute if score $effect_new_amt_2 ca.merge_var < $effect_old_amt_2 ca.merge_var run data modify storage carto_event new.parameters.damage set from storage carto_event old.parameters.damage

execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration
execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage carto_event new.parameters.owner set from storage carto_event old.parameters.owner

execute if score $effect_new_amt_2 ca.merge_var < $effect_old_amt_2 ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration
execute if score $effect_new_amt_2 ca.merge_var < $effect_old_amt_2 ca.merge_var run data modify storage carto_event new.parameters.owner set from storage carto_event old.parameters.owner