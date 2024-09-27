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
execute unless score @s ca.ench_agility_lvl matches 1.. run attribute @s minecraft:generic.safe_fall_distance modifier remove ca.agility_stat
execute unless score @s ca.ench_extended_lvl matches 1.. run attribute @s minecraft:player.entity_interaction_range modifier remove ca.extended_stat
execute unless score @s ca.ench_extended_lvl matches 1.. run attribute @s minecraft:player.block_interaction_range modifier remove ca.extended_stat
execute unless score @s ca.ench_handling_lvl matches 1.. run attribute @s minecraft:player.mining_efficiency modifier remove ca.handling_stat
execute unless score @s ca.ench_traveling_lvl matches 1.. run attribute @s minecraft:generic.step_height modifier remove ca.traveling_stat


execute unless score @s ca.ench_precision_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_ranged_damage_ench_percent
execute unless score @s ca.ench_lucky_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_combat_luck_ench_value
execute unless score @s ca.ench_amplitude_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_aoe_size_ench_percent
execute unless score @s ca.ench_resonance_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_aoe_damage_ench_percent
execute unless score @s ca.ench_technique_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_precise_hit_chance_ench_percent
execute unless score @s ca.ench_invigorated_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_healing_power_ench_percent

execute unless score @s ca.ench_reverb_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_chaining_chance_ench_percent
execute unless score @s ca.ench_reverb_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_chaining_amount_ench_value

execute unless score @s ca.ench_echo_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_restrike_chance_ench_percent
execute unless score @s ca.ench_echo_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_restrike_amount_ench_value
execute unless score @s ca.ench_echo_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_restrike_rate_ench_value

execute unless score @s ca.ench_lifesteal_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_life_drain_chance_ench_percent
execute unless score @s ca.ench_lifesteal_lvl matches 1.. run attribute @s minecraft:generic.oxygen_bonus modifier remove ca.attr_life_drain_amount_ench_value

#Reset Attributes Here unless they are set
execute unless score @s ca.ench_precision_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/ranged_damage
execute unless score @s ca.ench_lucky_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/combat_luck
execute unless score @s ca.ench_amplitude_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/aoe_size
execute unless score @s ca.ench_resonance_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/aoe_damage
execute unless score @s ca.ench_technique_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/precise_hit_chance
execute unless score @s ca.ench_invigorated_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/healing_power

execute unless score @s ca.ench_reverb_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/chaining_chance
execute unless score @s ca.ench_reverb_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/chaining_amount

execute unless score @s ca.ench_echo_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/restrike_chance
execute unless score @s ca.ench_echo_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/restrike_amount

execute unless score @s ca.ench_lifesteal_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/life_drain_chance
execute unless score @s ca.ench_lifesteal_lvl matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/read_to_score/attribute/life_drain_amount