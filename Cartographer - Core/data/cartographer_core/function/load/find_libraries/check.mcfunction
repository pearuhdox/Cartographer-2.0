scoreboard players set $#lib_bs ca.installed 0
scoreboard players set $#lib_del ca.installed 0
scoreboard players set $#lib_mot ca.installed 0

function cartographer_core:load/find_libraries/bs
function cartographer_core:load/find_libraries/delta
function cartographer_core:load/find_libraries/mob_motion

scoreboard players set $#lib_all_found ca.installed 0
execute if score $#lib_del ca.installed matches 1 if score $#lib_bs ca.installed matches 1 if score $#lib_mot ca.installed matches 1 run scoreboard players set $#lib_all_found ca.installed 1