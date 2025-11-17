function cartographer_core:helper/get_target_status/get_percentage_health

scoreboard players set @s ca.poise_active 0
execute if score $percentage_health_remaining ca.var matches 50.. run scoreboard players set @s ca.poise_active 1