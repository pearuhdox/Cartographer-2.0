execute unless score @s ca.ench_celerity_lvl matches 1.. run attribute @s minecraft:generic.movement_speed modifier remove ca.celerity_stat
execute unless score @s ca.ench_dexterity_lvl matches 1.. run attribute @s minecraft:generic.attack_speed modifier remove ca.dexterity_stat
execute unless score @s ca.ench_finesse_lvl matches 1.. run attribute @s minecraft:generic.attack_damage modifier remove ca.finesse_stat
execute unless score @s ca.ench_immovable_lvl matches 1.. run attribute @s minecraft:generic.knockback_resistance modifier remove ca.immovable_stat
#Precision isnt a real stat so no line
execute unless score @s ca.ench_vitality_lvl matches 1.. run attribute @s minecraft:generic.max_health modifier remove ca.vitality_stat

execute unless score @s ca.ench_aqua_affinity_lvl matches 1.. run attribute @s minecraft:player.submerged_mining_speed modifier remove ca.aqua_affinity_stat
execute unless score @s ca.ench_depth_strider_lvl matches 1.. run attribute @s minecraft:generic.water_movement_efficiency modifier remove ca.depth_strider_stat
execute unless score @s ca.ench_respiration_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.respiration_stat
execute unless score @s ca.ench_swift_sneak_lvl matches 1.. run attribute @s minecraft:player.sneaking_speed modifier remove ca.swift_sneak_stat
execute unless score @s ca.ench_soul_speed_lvl matches 1.. run attribute @s minecraft:generic.movement_efficiency modifier remove ca.soul_speed_stat


execute unless score @s ca.ench_agility_lvl matches 1.. run attribute @s minecraft:generic.jump_strength modifier remove ca.agility_stat
execute unless score @s ca.ench_extended_lvl matches 1.. run attribute @s minecraft:player.entity_interaction_range modifier remove ca.extended_stat
execute unless score @s ca.ench_extended_lvl matches 1.. run attribute @s minecraft:player.block_interaction_range modifier remove ca.extended_stat
execute unless score @s ca.ench_handling_lvl matches 1.. run attribute @s minecraft:player.mining_efficiency modifier remove ca.handling_stat
execute unless score @s ca.ench_traveling_lvl matches 1.. run attribute @s minecraft:generic.step_height modifier remove ca.traveling_stat

