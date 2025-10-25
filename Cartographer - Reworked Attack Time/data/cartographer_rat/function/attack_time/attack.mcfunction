function cartographer_rat:attack_time/attack_branch

#unless score @s ca.rat_time matches 1.. 

advancement revoke @s[advancements={cartographer_rat:attack=true}] only cartographer_rat:attack change
advancement revoke @s[advancements={cartographer_rat:kill=true}] only cartographer_rat:kill change