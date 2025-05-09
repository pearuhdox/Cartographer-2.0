#Remove tags so they work again
tag @s remove ca.eruption_used_spawner
tag @s remove ca.soulfire_used_spawner


execute if score @s ca.ench_aberration_main_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/aberration/break_spawner
execute if score @s ca.ench_quake_main_lvl matches 1.. align xyz positioned ~0.5 ~ ~0.5 run function cartographer_custom_enchantments:enchantment/passive/quake/break_spawner

execute if score @s ca.ench_starfall_main_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/starfall/break_spawner
execute if score @s ca.ench_orbit_main_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/orbit/break_spawner

execute if score @s ca.ench_storm_main_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/break_spawner
execute if score @s ca.ench_induction_main_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/break_spawner

function cartographer_custom_enchantments:enchantment/passive/diversion/break_spawner