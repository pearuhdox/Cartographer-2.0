function cartographer_core:load/find_libraries/check

execute unless score $#lib_all_found ca.installed matches 1.. as @a at @s run function cartographer_core:load/find_libraries/warning_sound