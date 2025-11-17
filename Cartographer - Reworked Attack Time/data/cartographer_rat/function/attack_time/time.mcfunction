execute if score @s ca.rat_time matches 1.. run scoreboard players remove @s ca.rat_time 1
execute if score @s ca.block_attack_indicator_time matches 1.. run scoreboard players remove @s ca.block_attack_indicator_time 1

function cartographer_rat:attack_time/get_percent

execute unless score @s ca.rat_perc matches 51.. run attribute @s minecraft:attack_speed modifier add ca.rat_atk_spd_penalty -1024 add_value
execute if score @s ca.rat_perc matches 51.. run attribute @s minecraft:attack_speed modifier remove ca.rat_atk_spd_penalty
execute if score @s ca.rat_perc matches 51.. run attribute @s minecraft:entity_interaction_range modifier remove ca.rat_atk_reach_penalty

execute unless score @s ca.rat_perc matches 85.. run attribute @s minecraft:attack_speed modifier remove ca.rat_atk_spd
execute if score @s ca.rat_perc matches 85.. run attribute @s minecraft:attack_speed modifier add ca.rat_atk_spd 128 add_value

execute if score @s ca.rat_perc matches 85.. run attribute @s minecraft:entity_interaction_range modifier add ca.rat_atk_reach 0.5 add_value

execute if score @s ca.rat_perc matches 100.. run tag @s remove ca.rat_recharge

execute store result score $has_weapon ca.rat_total run attribute @s minecraft:attack_damage modifier value get minecraft:base_attack_damage 100
execute unless score $has_weapon ca.rat_total matches 1.. run attribute @s attack_damage modifier add ca.rat_no_weapon_penalty -0.9 add_multiplied_base
execute if score $has_weapon ca.rat_total matches 1.. run attribute @s attack_damage modifier remove ca.rat_no_weapon_penalty
