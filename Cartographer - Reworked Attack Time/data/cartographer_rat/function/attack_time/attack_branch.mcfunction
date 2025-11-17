attribute @s minecraft:attack_speed modifier remove ca.rat_atk_spd
attribute @s minecraft:entity_interaction_range modifier remove ca.rat_atk_reach
attribute @s minecraft:entity_interaction_range modifier add ca.rat_atk_reach_penalty -10 add_multiplied_base

execute store result score speed= ca.rat_time run attribute @s minecraft:attack_speed get 10.1
scoreboard players set @s ca.rat_time 200
scoreboard players operation @s ca.rat_time /= speed= ca.rat_time
scoreboard players operation @s ca.rat_total = @s ca.rat_time

function cartographer_rat:attack_time/get_percent

tag @s add ca.rat_recharge