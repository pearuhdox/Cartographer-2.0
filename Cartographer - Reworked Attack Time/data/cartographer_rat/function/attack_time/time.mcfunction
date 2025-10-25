execute if score @s ca.rat_time matches 1.. run scoreboard players remove @s ca.rat_time 1
execute if score @s ca.block_attack_indiactor_time matches 1.. run scoreboard players remove @s ca.block_attack_indiactor_time 1

function cartographer_rat:attack_time/get_percent

execute unless score @s ca.rat_perc matches 85.. run attribute @s minecraft:attack_speed modifier add ca.rat_atk_spd_penalty -1024 add_value
execute if score @s ca.rat_perc matches 85.. run attribute @s minecraft:attack_speed modifier remove ca.rat_atk_spd_penalty

execute if score @s ca.rat_perc matches 85.. run attribute @s minecraft:entity_interaction_range modifier add ca.rat_atk_reach 0.5 add_value
execute if score @s ca.rat_perc matches 85.. run attribute @s minecraft:entity_interaction_range modifier remove ca.rat_atk_reach_penalty

execute unless score @s ca.rat_perc matches 85.. run attribute @s minecraft:attack_speed modifier remove ca.rat_atk_spd
execute if score @s ca.rat_perc matches 85.. run attribute @s minecraft:attack_speed modifier add ca.rat_atk_spd 128 add_value

execute unless score $hide_attack_ready ca.gamerule matches 1.. unless score @s ca.block_attack_indiactor_time matches 1.. run function cartographer_rat:attack_time/show_attack_indicator