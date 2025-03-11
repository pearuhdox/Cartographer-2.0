scoreboard players operation $mob_health_diff ca.warding_var = @s ca.warding_health_old
scoreboard players operation $mob_health_diff ca.warding_var -= @s ca.warding_health

execute if score $mob_health_diff ca.warding_var matches 1.. run function carto_event:event/custom_statuses/warding/mob_damaged with storage carto_event current[-1].parameters

execute unless score $mob_health_diff ca.warding_var matches 1.. run scoreboard players operation @s ca.warding_var -= $mob_health_diff ca.warding_var