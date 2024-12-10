execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true}}] if score $vengeance_damage ca.vengeance_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/vengeance/hit

execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true}}] if score $used_momentum ca.momentum_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/victim

execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true}}] if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/hit/victim
execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true}}] if score $used_induction ca.induction_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/hit/victim

execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true}}] if score $damage ca.gravity_var matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/victim


execute if score $proc ca.ench_starfall_lvl matches 100.. unless predicate bb:cant_crit if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 1
execute if score $proc ca.ench_starfall_lvl matches 100.. if predicate bb:cant_crit if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 2
execute if score $proc ca.ench_starfall_lvl matches 100.. if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run scoreboard players set $proc ca.ench_starfall_lvl 3
execute if score $proc ca.ench_starfall_lvl matches 100.. if entity @s[advancements={entityid:entity_hurt_player={panic_causes=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 4

execute if score $proc ca.ench_starfall_lvl matches 1 at @s run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:125}
execute if score $proc ca.ench_starfall_lvl matches 2 at @s run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:100}
execute if score $proc ca.ench_starfall_lvl matches 3 at @s run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:75}
execute if score $proc ca.ench_starfall_lvl matches 4 at @s run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_chance:5}


execute if score $proc ca.ench_orbit_lvl matches 100.. unless predicate bb:cant_crit if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 1
execute if score $proc ca.ench_orbit_lvl matches 100.. if predicate bb:cant_crit if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 2
execute if score $proc ca.ench_orbit_lvl matches 100.. if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run scoreboard players set $proc ca.ench_orbit_lvl 3
execute if score $proc ca.ench_orbit_lvl matches 100.. if entity @s[advancements={entityid:entity_hurt_player={panic_causes=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 4

execute if score $proc ca.ench_orbit_lvl matches 1 at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:125}
execute if score $proc ca.ench_orbit_lvl matches 2 at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:100}
execute if score $proc ca.ench_orbit_lvl matches 3 at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:75}
execute if score $proc ca.ench_orbit_lvl matches 4 at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_chance:5}

execute if score $proc ca.ench_eruption_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run function cartographer_custom_enchantments:enchantment/passive/eruption/damage_event
execute if score $proc ca.ench_soulfire_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run function cartographer_custom_enchantments:enchantment/passive/soulfire/damage_event

execute if score $proc ca.ench_eruption_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run execute unless score @s ca.first_blood_timer matches 1.. run scoreboard players set @s ca.first_blood_timer 300
execute if score $proc ca.ench_eruption_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run tag @s add ca.enchant_first_blood

execute if score $proc ca.ench_soulfire_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run execute unless score @s ca.first_blood_timer matches 1.. run scoreboard players set @s ca.first_blood_timer 300
execute if score $proc ca.ench_soulfire_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run tag @s add ca.enchant_first_blood


#Get Generic Weapon Damage Values - Only Direct Melee/Projectile Hits
scoreboard players set $attack_type ca.ench_value 0
function cartographer_custom_enchantments:enchantment/helper/weapon/reset_ench_values
execute if entity @s[advancements={entityid:entity_hurt_player={panic_causes=true,is_projectile=false}}] run scoreboard players set $attack_type ca.ench_value 1
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true,panic_causes=true}}] run scoreboard players set $attack_type ca.ench_value 2
execute if score $attack_type ca.ench_value matches 1 on attacker run function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values

execute if score $attack_type ca.ench_value matches 2 on attacker run function cartographer_custom_enchantments:system/projectile_find/owner_uuid
execute if score $attack_type ca.ench_value matches 2 at @s run function cartographer_custom_enchantments:system/projectile_find/scan

#Do Weapon Damage Enchantments
execute if score $attack_type ca.ench_value matches 1.. if score $hex_eater ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hex_eater/hit
execute if score $attack_type ca.ench_value matches 1.. if score $chaotic ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/chaotic/hit
execute if score $attack_type ca.ench_value matches 1.. if score $duelist ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/hit
execute if score $attack_type ca.ench_value matches 1.. if score $hunter ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hunter/hit

execute if score $attack_type ca.ench_value matches 1.. if score $first_strike ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/first_strike/hit
execute if score $attack_type ca.ench_value matches 1.. if score $follow_up ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/follow_up/hit
execute if score $attack_type ca.ench_value matches 1.. if score $focus ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/focus/hit
# Concentration does not work on entities - execute if score $attack_type ca.ench_value matches 1.. if score @s ca.concentration_time matches 1.. if score $concentration ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/hit

execute if score $attack_type ca.ench_value matches 1 if score $rushdown ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/rushdown/hit
execute if score $attack_type ca.ench_value matches 1 if score $leverage ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/leverage/hit

execute if score $attack_type ca.ench_value matches 2 if score $overcharge ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/overcharge/hit
execute if score $attack_type ca.ench_value matches 2 if score $point_blank ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/point_blank/hit
execute if score $attack_type ca.ench_value matches 2 if score $sharpshot ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/sharpshot/hit

#Run Repulsion Here for Mobs - Prime it in 2 seconds
execute if score $attack_type ca.ench_value matches 1 on attacker at @s if score @s ca.ench_repulsion_lvl matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/repulsion/activate",duration:41,delay:000,parameters:{},merge_behavior:"merge"}

execute if score $attack_type ca.ench_value matches 1.. if score $explosive ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/hit
execute if score $attack_type ca.ench_value matches 1.. if score $pulling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/pulling/hit

execute if score $attack_type ca.ench_value matches 1 if entity @s[tag=ca.ripper_tagged] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/hit_melee

execute if score $attack_type ca.ench_value matches 2 if score $shrapnel ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/hit
execute if score $attack_type ca.ench_value matches 2 if score $ripper ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/hit
execute if score $attack_type ca.ench_value matches 2 if score $barbed ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barbed/hit

#execute if score $attack_type ca.ench_value matches 2 if score $grappling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate_mob_hit


tag @s remove ca.did_ench_particles