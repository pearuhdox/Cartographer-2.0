function cartographer_core:helper/get_target_status/get_percentage_health

execute if score $percentage_health_remaining ca.var matches ..50 run scoreboard players set $active ca.ench_riposte_lvl 3
execute if score $percentage_health_remaining ca.var matches ..50 run tag @s remove ca.riposte_half_health

execute if score $percentage_health_remaining ca.var matches 51.. run scoreboard players set $active ca.ench_riposte_lvl 1
