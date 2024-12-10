execute if score @s ca.ench_overcharge_lvl matches 1.. if score @s ca.draw_bow_time matches 40 run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0.75

execute if score @s ca.ench_overcharge_lvl matches 1.. if score @s ca.draw_bow_time matches 40.. run scoreboard players set @s ca.overcharge_time 5