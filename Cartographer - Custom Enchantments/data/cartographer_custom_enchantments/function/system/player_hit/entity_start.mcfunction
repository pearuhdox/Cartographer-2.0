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

execute if score $proc ca.ench_eruption_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run function cartographer_custom_enchantments:enchantment/passive/eruption/damage_event
execute if score $proc ca.ench_soulfire_lvl matches 1 at @s if entity @s[tag=!ca.enchant_first_blood] run function cartographer_custom_enchantments:enchantment/passive/soulfire/damage_event
tag @s add ca.enchant_first_blood
function carto_event:api/create_single_entity_event {event:"first_blood",duration:1,delay:300,parameters:{},merge_behavior:"none"}