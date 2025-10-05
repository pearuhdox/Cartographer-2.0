execute if score @s menu matches 1 run function cartographer_core:load/reload/show_options
execute if score @s menu matches 2 run function cartographer_core:load/reload/show_libraries
execute if score @s menu matches 3 run function cartographer_core:load/reload/show_installed

execute if score @s menu matches 1000 run function cartographer_core:load/reload_panel_force


scoreboard players set @s menu 0