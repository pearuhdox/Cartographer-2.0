execute store result score $effect_old_amt ca.merge_var run data get storage carto_event old.parameters.amount 100
execute store result score $effect_new_amt ca.merge_var run data get storage carto_event new.parameters.amount 100

execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage cartographer_custom_statuses:siphon merge set value {}
execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var store result storage cartographer_custom_statuses:siphon merge.strength double 0.01 run scoreboard players get $effect_new_amt ca.merge_var
execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage cartographer_custom_statuses:siphon merge.old_player set from storage carto_event old.parameters.owner
execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage cartographer_custom_statuses:siphon merge.new_player set from storage carto_event old.parameters.owner
execute if score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run function carto_event:event/custom_statuses/siphon/strength/custom_merge_player with storage cartographer_custom_statuses:siphon merge

execute unless score $effect_old_amt ca.merge_var < $effect_new_amt ca.merge_var run data modify storage carto_event new.parameters.amount set from storage carto_event old.parameters.amount
execute unless score $effect_old_amt ca.merge_var <= $effect_new_amt ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration

data modify storage carto_event new.parameters.owner set from storage carto_event old.parameters.owner