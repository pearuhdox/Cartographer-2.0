execute if score $vengeance_damage ca.vengeance_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/vengeance/hit

execute if score $used_momentum ca.momentum_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/victim

execute if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/hit/victim
execute if score $used_induction ca.induction_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/hit/victim

execute if score $damage ca.gravity_var matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/victim

execute if score $proc ca.ench_starfall_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:125}
execute if score $proc ca.ench_starfall_lvl matches 2 run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:100}
execute if score $proc ca.ench_starfall_lvl matches 3 run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:75}
execute if score $proc ca.ench_starfall_lvl matches 4 run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:5}

execute if score $proc ca.ench_orbit_lvl matches 1 run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:125}
execute if score $proc ca.ench_orbit_lvl matches 2 run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:100}
execute if score $proc ca.ench_orbit_lvl matches 3 run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:75}
execute if score $proc ca.ench_orbit_lvl matches 4 run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:5}

execute if score $proc ca.ench_eruption_lvl matches 1.. at @s if entity @s[tag=!ca.enchant_opportunist] run function cartographer_custom_enchantments:enchantment/passive/eruption/damage_event
execute if score $proc ca.ench_soulfire_lvl matches 1.. at @s if entity @s[tag=!ca.enchant_opportunist] run function cartographer_custom_enchantments:enchantment/passive/soulfire/damage_event

execute if score $proc ca.ench_eruption_lvl matches 1.. at @s if entity @s[tag=!ca.enchant_opportunist] run function carto_event:api/create_single_entity_event {event:"opportunist",duration:300,delay:0,parameters:{},merge_behavior:"none"}
execute if score $proc ca.ench_soulfire_lvl matches 1.. at @s if entity @s[tag=!ca.enchant_opportunist] run function carto_event:api/create_single_entity_event {event:"opportunist",duration:300,delay:0,parameters:{},merge_behavior:"none"}

execute if score $proc ca.ench_eruption_lvl matches 1.. at @s if entity @s[tag=!ca.enchant_opportunist] run tag @s add ca.enchant_opportunist
execute if score $proc ca.ench_soulfire_lvl matches 1.. at @s if entity @s[tag=!ca.enchant_opportunist] run tag @s add ca.enchant_opportunist

#Mob Activates Riposte
execute if score $attack_type ca.ench_value matches 1.. unless entity @s[tag=ca.has_custom_status_silenced] if score @s ca.ench_riposte_lvl matches 1.. unless entity @s[tag=ca.mob_use_riposte] store result score $active ca.ench_riposte_lvl run random value 1..3
execute if score $attack_type ca.ench_value matches 1.. unless entity @s[tag=ca.has_custom_status_silenced] if entity @s[tag=ca.riposte_first_hit] if score @s ca.ench_riposte_lvl matches 1.. unless entity @s[tag=ca.mob_use_riposte] run scoreboard players set $active ca.ench_riposte_lvl 3
execute if score $attack_type ca.ench_value matches 1.. unless entity @s[tag=ca.has_custom_status_silenced] if entity @s[tag=ca.riposte_half_health] if score @s ca.ench_riposte_lvl matches 1.. unless entity @s[tag=ca.mob_use_riposte] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/half_health
execute if score $attack_type ca.ench_value matches 1.. unless entity @s[tag=ca.has_custom_status_silenced] if score @s ca.ench_riposte_lvl matches 1.. unless entity @s[tag=ca.mob_use_riposte] if score $active ca.ench_riposte_lvl matches 3.. at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/riposte/setup_entity

#Do Weapon Damage Enchantments
scoreboard players set $active ca.concentration_time 0
execute on attacker if score @s ca.concentration_time matches 1.. run scoreboard players set $active ca.concentration_time 1
execute on attacker if score @s ca.concentration_time matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/vfx

execute if score $attack_type ca.ench_value matches 1.. if score $hex_eater ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hex_eater/hit
execute if score $attack_type ca.ench_value matches 1.. if score $chaotic ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/chaotic/hit
execute if score $attack_type ca.ench_value matches 1.. if score $duelist ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/hit
execute if score $attack_type ca.ench_value matches 1.. if score $hunter ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hunter/hit

execute if score $attack_type ca.ench_value matches 1.. if score $first_strike ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/first_strike/hit
execute if score $attack_type ca.ench_value matches 1.. if score $follow_up ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/follow_up/hit
execute if score $attack_type ca.ench_value matches 1.. if score $focus ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/focus/hit
execute if score $attack_type ca.ench_value matches 1.. if score $active ca.concentration_time matches 1.. if score $concentration ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/hit

execute if score $attack_type ca.ench_value matches 1 if score $rushdown ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/rushdown/hit
execute if score $attack_type ca.ench_value matches 1 if score $leverage ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/leverage/hit

execute if score $attack_type ca.ench_value matches 2 if score $overcharge ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/overcharge/hit
execute if score $attack_type ca.ench_value matches 2 if score $point_blank ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/point_blank/hit
execute if score $attack_type ca.ench_value matches 2 if score $sharpshot ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/sharpshot/hit

execute if score $attack_type ca.ench_value matches 1.. if score $explosive ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/hit
execute if score $attack_type ca.ench_value matches 1.. if score $pulling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/pulling/hit

execute if score $attack_type ca.ench_value matches 1 if score @s ca.stuck_count matches 1.. run function carto_event:event/stuck_handler/melee_hit

execute if score $attack_type ca.ench_value matches 2 if score $grappling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate_mob_hit

execute if score $attack_type ca.ench_value matches 2 if score $shrapnel ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/hit
execute if score $attack_type ca.ench_value matches 2 if score $ripper ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/hit
execute if score $attack_type ca.ench_value matches 2 if score $barbed ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barbed/hit

tag @s remove ca.did_ench_particles

tag @s remove ca.projectile_find_loc

#Test All Nearby Projectiles and see if there are ones that need to bypass damage check - later mechanic not to do now
#execute as @e[type=#bb:projectile,distance=..10] at @s run say proj
