#Effect 1 is stack amount
execute store result score $effect_old_amt ca.merge_var run data get storage carto_event old.parameters.amount 1
execute store result score $effect_new_amt ca.merge_var run data get storage carto_event new.parameters.amount 1

#Effect 2 is tick rate
execute store result score $effect_old_amt_2 ca.merge_var run data get storage carto_event old.parameters.tick_rate 1
execute store result score $effect_new_amt_2 ca.merge_var run data get storage carto_event new.parameters.tick_rate 1

#Effect 3 is cap
execute store result score $effect_old_amt_3 ca.merge_var run data get storage carto_event old.parameters.cap 1
execute store result score $effect_new_amt_3 ca.merge_var run data get storage carto_event new.parameters.cap 1

#Raise cap if new cap is higher
scoreboard players operation $effect_new_amt_3 ca.merge_var > $effect_old_amt_3 ca.merge_var

#Add new amount to old amount
scoreboard players operation $effect_new_amt ca.merge_var += $effect_old_amt ca.merge_var

#Cap amount if it exceeds the cap
scoreboard players operation $effect_new_amt ca.merge_var < $effect_new_amt_3 ca.merge_var

#Decrease tick rate if new is lower then old
scoreboard players operation $effect_new_amt_2 ca.merge_var < $effect_old_amt_2 ca.merge_var

execute store result storage carto_event new.parameters.amount int 1 run scoreboard players get $effect_new_amt ca.merge_var
execute store result storage carto_event new.parameters.tick_rate int 1 run scoreboard players get $effect_new_amt_2 ca.merge_var
execute store result storage carto_event new.parameters.cap int 1 run scoreboard players get $effect_new_amt_3 ca.merge_var

data modify storage carto_event new.duration set from storage carto_event old.duration

tag @s remove ca.bleed_continue
tag @s remove ca.has_custom_status_bleeding