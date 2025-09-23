execute unless score @s ca.ench_celerity_lvl matches 1.. run attribute @s minecraft:movement_speed modifier remove ca.celerity_stat
execute unless score @s ca.ench_dexterity_lvl matches 1.. run attribute @s minecraft:attack_speed modifier remove ca.dexterity_stat
execute unless score @s ca.ench_finesse_lvl matches 1.. run attribute @s minecraft:attack_damage modifier remove ca.finesse_stat
execute unless score @s ca.ench_immovable_lvl matches 1.. run attribute @s minecraft:knockback_resistance modifier remove ca.immovable_stat
#Precision isnt a real stat so no line
execute unless score @s ca.ench_vitality_lvl matches 1.. run attribute @s minecraft:max_health modifier remove ca.vitality_stat

execute unless score @s ca.ench_aqua_affinity_lvl matches 1.. run attribute @s minecraft:submerged_mining_speed modifier remove ca.aqua_affinity_stat
execute unless score @s ca.ench_depth_strider_lvl matches 1.. run attribute @s minecraft:water_movement_efficiency modifier remove ca.depth_strider_stat
execute unless score @s ca.ench_respiration_lvl matches 1.. run attribute @s minecraft:oxygen_bonus modifier remove ca.respiration_stat
execute unless score @s ca.ench_swift_sneak_lvl matches 1.. run attribute @s minecraft:sneaking_speed modifier remove ca.swift_sneak_stat
execute unless score @s ca.ench_soul_speed_lvl matches 1.. run attribute @s minecraft:movement_efficiency modifier remove ca.soul_speed_stat


execute unless score @s ca.ench_agility_lvl matches 1.. run attribute @s minecraft:jump_strength modifier remove ca.agility_stat
execute unless score @s ca.ench_agility_lvl matches 1.. run attribute @s minecraft:safe_fall_distance modifier remove ca.agility_stat
execute unless score @s ca.ench_extended_lvl matches 1.. run attribute @s minecraft:entity_interaction_range modifier remove ca.extended_stat
execute unless score @s ca.ench_extended_lvl matches 1.. run attribute @s minecraft:block_interaction_range modifier remove ca.extended_stat
execute unless score @s ca.ench_handling_lvl matches 1.. run attribute @s minecraft:mining_efficiency modifier remove ca.handling_stat
execute unless score @s ca.ench_traveling_lvl matches 1.. run attribute @s minecraft:step_height modifier remove ca.traveling_stat
