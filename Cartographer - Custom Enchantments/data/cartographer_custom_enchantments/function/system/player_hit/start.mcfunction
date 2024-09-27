execute if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/attack

scoreboard players set $used_momentum ca.momentum_stack 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true}}] if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/user

scoreboard players set $used_storm ca.storm_stack 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true}}] if score @s ca.ench_storm_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/hit/user

scoreboard players set $used_induction ca.induction_stack 0
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true}}] if score @s ca.ench_induction_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/hit/user

scoreboard players set $vengeance_damage ca.vengeance_stack 0
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack = @s ca.ench_vengeance_lvl
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack *= $2 ca.CONSTANT

scoreboard players set $check ca.gravity_var 0
scoreboard players set $damage ca.gravity_var 0
execute if score @s ca.ench_gravity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/test
execute if score $check ca.gravity_var matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/user

scoreboard players set $proc ca.ench_starfall_lvl 0
execute if score @s ca.ench_starfall_lvl matches 1.. unless score @s ca.starfall_tick_cap matches 5.. unless predicate bb:cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 1
execute if score @s ca.ench_starfall_lvl matches 1.. unless score @s ca.starfall_tick_cap matches 5.. if predicate bb:cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 2
execute if score @s ca.ench_starfall_lvl matches 1.. unless score @s ca.starfall_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proc ca.ench_starfall_lvl 3
execute if score @s ca.ench_starfall_lvl matches 1.. unless score @s ca.starfall_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 4

scoreboard players set $proc ca.ench_orbit_lvl 0
execute if score @s ca.ench_orbit_lvl matches 1.. unless score @s ca.orbit_tick_cap matches 5.. unless predicate bb:cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 1
execute if score @s ca.ench_orbit_lvl matches 1.. unless score @s ca.orbit_tick_cap matches 5.. if predicate bb:cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 2
execute if score @s ca.ench_orbit_lvl matches 1.. unless score @s ca.orbit_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proc ca.ench_orbit_lvl 3
execute if score @s ca.ench_orbit_lvl matches 1.. unless score @s ca.orbit_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 4

scoreboard players set $proc ca.ench_storm_lvl 0
execute if score @s ca.ench_storm_lvl matches 1.. unless score @s ca.storm_tick_cap matches 1.. run scoreboard players set $proc ca.ench_storm_lvl 1

scoreboard players set $proc ca.ench_induction_lvl 0
execute if score @s ca.ench_induction_lvl matches 1.. unless score @s ca.induction_tick_cap matches 1.. run scoreboard players set $proc ca.ench_induction_lvl 1

scoreboard players set $proc ca.ench_eruption_lvl 0
execute if score @s ca.ench_eruption_lvl matches 1.. run scoreboard players set $proc ca.ench_eruption_lvl 1

scoreboard players set $proc ca.ench_soulfire_lvl 0
execute if score @s ca.ench_soulfire_lvl matches 1.. run scoreboard players set $proc ca.ench_soulfire_lvl 1
