#say player loop

#execute if score @s ca.ethereal_time matches 1.. run scoreboard players remove @s ca.ethereal_time 1

#function cartographer_custom_enchantments:loop/tick/reset

execute unless score @s ca.ench_trailblazer_lvl matches 1.. run scoreboard players set @s ca.sprint_dist_trailblazer 0