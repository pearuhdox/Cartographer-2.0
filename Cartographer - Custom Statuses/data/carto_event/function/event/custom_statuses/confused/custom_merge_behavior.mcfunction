execute store result score $effect_old_range ca.merge_var run data get storage carto_event old.parameters.range 1
execute store result score $effect_new_range ca.merge_var run data get storage carto_event new.parameters.range 1

execute store result score $effect_old_damage ca.merge_var run data get storage carto_event old.parameters.damage 1
execute store result score $effect_new_damage ca.merge_var run data get storage carto_event new.parameters.damage 1

execute store result score $effect_old_speed_bonus ca.merge_var run data get storage carto_event old.parameters.speed_bonus 1
execute store result score $effect_new_speed_bonus ca.merge_var run data get storage carto_event new.parameters.speed_bonus 1

execute store result score $effect_old_kbr_bonus ca.merge_var run data get storage carto_event old.parameters.kbr_bonus 1
execute store result score $effect_new_kbr_bonus ca.merge_var run data get storage carto_event new.parameters.kbr_bonus 1

execute store result score $effect_old_kb_bonus ca.merge_var run data get storage carto_event old.parameters.kb_bonus 1
execute store result score $effect_new_kb_bonus ca.merge_var run data get storage carto_event new.parameters.kb_bonus 1

execute store result score $effect_old_attack_bonus ca.merge_var run data get storage carto_event old.parameters.attack_bonus 1
execute store result score $effect_new_attack_bonus ca.merge_var run data get storage carto_event new.parameters.attack_bonus 1

execute store result score $effect_old_duration ca.merge_var run data get storage carto_event old.duration 1
execute store result score $effect_new_duration ca.merge_var run data get storage carto_event new.duration 1



execute if score $effect_new_range ca.merge_var < $effect_old_range ca.merge_var run data modify storage carto_event new.parameters.range set from storage carto_event old.parameters.range
execute if score $effect_new_damage ca.merge_var < $effect_old_damage ca.merge_var run data modify storage carto_event new.parameters.damage set from storage carto_event old.parameters.damage
execute if score $effect_new_speed_bonus ca.merge_var < $effect_old_speed_bonus ca.merge_var run data modify storage carto_event new.parameters.speed_bonus set from storage carto_event old.parameters.speed_bonus
execute if score $effect_new_kbr_bonus ca.merge_var < $effect_old_kbr_bonus ca.merge_var run data modify storage carto_event new.parameters.kbr_bonus set from storage carto_event old.parameters.kbr_bonus
execute if score $effect_new_kb_bonus ca.merge_var < $effect_old_kb_bonus ca.merge_var run data modify storage carto_event new.parameters.kb_bonus set from storage carto_event old.parameters.kb_bonus
execute if score $effect_new_attack_bonus ca.merge_var < $effect_old_attack_bonus ca.merge_var run data modify storage carto_event new.parameters.attack_bonus set from storage carto_event old.parameters.attack_bonus

execute if score $effect_new_duration ca.merge_var < $effect_old_duration ca.merge_var run data modify storage carto_event new.duration set from storage carto_event old.duration