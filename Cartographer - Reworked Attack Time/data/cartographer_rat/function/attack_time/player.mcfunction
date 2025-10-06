execute unless score @s ca.rat_time matches -2147483648.. run function cartographer_rat:attack_time/reg
function cartographer_rat:attack_time/time

execute store result score @s ca.rat_reach run attribute @s entity_interaction_range get 100
