scoreboard players operation $old_pack_ct ca.installed = $pack_ct ca.installed
execute store result score $pack_ct ca.installed run datapack list enabled

execute unless score $pack_ct ca.installed = $old_pack_ct ca.installed run function cartographer_core:load/find_libraries/check

execute unless score $#lib_all_found ca.installed matches 1.. as @a at @s run function cartographer_core:load/find_libraries/warning_sound