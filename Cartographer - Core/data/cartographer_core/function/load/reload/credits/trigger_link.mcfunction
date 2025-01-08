execute if score @s ca.credits_menu matches 1 run function cartographer_core:load/reload/credits/dev_page
execute if score @s ca.credits_menu matches 2 run function cartographer_core:load/reload/credits/test_page
execute if score @s ca.credits_menu matches 3 run function cartographer_core:load/reload/credits/patron_page

execute if score @s ca.credits_menu matches 4 run function cartographer_core:load/reload/credits/dev_page
execute if score @s ca.credits_menu matches 5 run function cartographer_core:load/reload/credits/test_page
execute if score @s ca.credits_menu matches 6 run function cartographer_core:load/reload/credits/patron_page

scoreboard players set @s ca.credits_menu 0