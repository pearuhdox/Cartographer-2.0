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
