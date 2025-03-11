scoreboard players operation $mob_health_diff ca.defiance_var = @s ca.defiance_health_old
scoreboard players operation $mob_health_diff ca.defiance_var -= @s ca.defiance_health

scoreboard players operation @s ca.defiance_var -= $mob_health_diff ca.defiance_var

execute if score @s ca.defiance_var matches ..0 run function carto_event:event/custom_statuses/defiance/mob_proc with storage carto_event current[-1].parameters