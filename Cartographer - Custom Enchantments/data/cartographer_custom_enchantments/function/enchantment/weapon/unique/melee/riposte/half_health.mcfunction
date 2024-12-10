function bb:lib/get_target_status/get_percentage_health

execute if score $percentage_health_remaining bbl.storage matches ..50 run scoreboard players set $active ca.ench_riposte_lvl 3
execute if score $percentage_health_remaining bbl.storage matches ..50 run tag @s remove ca.riposte_half_health

execute if score $percentage_health_remaining bbl.storage matches 51.. run scoreboard players set $active ca.ench_riposte_lvl 1
