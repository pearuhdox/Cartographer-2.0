#execute store result score $effect_old_amt ca.merge_var run data get storage carto_event old.parameters.amount 100
#execute store result score $effect_new_amt ca.merge_var run data get storage carto_event new.parameters.amount 100

#execute unless score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage carto_event new.parameters.amount set from storage carto_event old.parameters.amount
#execute unless score $effect_old_amt ca.merge_var <= $effect_new_amt ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration

tag @s remove ca.applied_loop_sound