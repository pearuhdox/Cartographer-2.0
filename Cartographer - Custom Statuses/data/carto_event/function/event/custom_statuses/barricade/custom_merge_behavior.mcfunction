execute if entity @s[type=player] run playsound minecraft:item.shield.block player @a[distance=..16] ~ ~ ~ 0.65 1.5
execute unless entity @s[type=player] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 0.65 1.5

execute store result score $effect_old_cap ca.merge_var run data get storage carto_event old.parameters.cap 1
execute store result score $effect_new_cap ca.merge_var run data get storage carto_event new.parameters.cap 1

execute store result score $effect_old_shields ca.merge_var run data get storage carto_event old.parameters.shields 1
execute store result score $effect_new_shields ca.merge_var run data get storage carto_event new.parameters.shields 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1

execute unless score $effect_old_cap ca.merge_var < $effect_new_cap ca.merge_var run data modify storage carto_event new.parameters.cap set from storage carto_event old.parameters.cap

scoreboard players operation @s ca.barricade_shields += $effect_new_shields ca.merge_var

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration