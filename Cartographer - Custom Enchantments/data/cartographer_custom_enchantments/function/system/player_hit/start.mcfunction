#Get Enchantment Values
scoreboard players set $attack_type ca.ench_value 0
function cartographer_custom_enchantments:enchantment/helper/weapon/reset_ench_values
execute if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $attack_type ca.ench_value 1
execute if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true,panic_causes=true}}] run scoreboard players set $attack_type ca.ench_value 2
execute if score $attack_type ca.ench_value matches 1 run function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values
function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values_passive

execute if score $attack_type ca.ench_value matches 1..2 run data modify storage gu:main out set value "-"
execute if score $attack_type ca.ench_value matches 1..2 as @s run function gu:generate
execute if score $attack_type ca.ench_value matches 1..2 run data modify storage cartographer:custom_enchantments owner set from storage gu:main out

execute if score $attack_type ca.ench_value matches 2 run function cartographer_custom_enchantments:system/projectile_find/owner_uuid
execute if score $attack_type ca.ench_value matches 2 at @n[tag=ca.projectile_find_loc] run function cartographer_custom_enchantments:system/projectile_find/scan

#Run Enchantments
execute if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/attack

scoreboard players set $used_momentum ca.momentum_stack 0
execute if score $attack_type ca.ench_value matches 1.. if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/user

scoreboard players set $used_storm ca.storm_stack 0
execute if score $attack_type ca.ench_value matches 1.. if score $storm ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/hit/user

scoreboard players set $used_induction ca.induction_stack 0
execute if score $attack_type ca.ench_value matches 1.. if score $induction ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/hit/user

scoreboard players set $vengeance_damage ca.vengeance_stack 0
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack = @s ca.ench_vengeance_lvl
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack *= $2 ca.CONSTANT

scoreboard players set $check ca.gravity_var 0
scoreboard players set $damage ca.gravity_var 0
execute if score @s ca.ench_gravity_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/test
execute if score $check ca.gravity_var matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/user

scoreboard players set $proc ca.ench_starfall_lvl 0
execute if score $starfall ca.ench_value matches 1.. unless score @s ca.starfall_tick_cap matches 5.. unless score @s ca.attack_cooldown_percent matches 16.. unless predicate cartographer_core:player/cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 1
execute if score $starfall ca.ench_value matches 1.. unless score @s ca.starfall_tick_cap matches 5.. unless score @s ca.attack_cooldown_percent matches 16.. if predicate cartographer_core:player/cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 2
execute if score $starfall ca.ench_value matches 1.. unless score @s ca.starfall_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proc ca.ench_starfall_lvl 3
execute if score $starfall ca.ench_value matches 1.. unless score @s ca.starfall_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_starfall_lvl 4

scoreboard players set $proc ca.ench_orbit_lvl 0
execute if score $orbit ca.ench_value matches 1.. unless score @s ca.orbit_tick_cap matches 5.. unless score @s ca.attack_cooldown_percent matches 16.. unless predicate cartographer_core:player/cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 1
execute if score $orbit ca.ench_value matches 1.. unless score @s ca.orbit_tick_cap matches 5.. unless score @s ca.attack_cooldown_percent matches 16.. if predicate cartographer_core:player/cant_crit if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 2
execute if score $orbit ca.ench_value matches 1.. unless score @s ca.orbit_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proc ca.ench_orbit_lvl 3
execute if score $orbit ca.ench_value matches 1.. unless score @s ca.orbit_tick_cap matches 5.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_orbit_lvl 4

scoreboard players set $proc ca.ench_storm_lvl 0
execute if score $storm ca.ench_value matches 1.. unless score @s ca.storm_tick_cap matches 1.. run scoreboard players set $proc ca.ench_storm_lvl 1

scoreboard players set $proc ca.ench_induction_lvl 0
execute if score $induction ca.ench_value matches 1.. unless score @s ca.induction_tick_cap matches 1.. run scoreboard players set $proc ca.ench_induction_lvl 1

scoreboard players set $proc ca.ench_eruption_lvl 0
execute if score $eruption ca.ench_value matches 1.. unless score @s ca.attack_cooldown_percent matches 16.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_eruption_lvl 1
execute if score $eruption ca.ench_value matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proc ca.ench_eruption_lvl 1
execute if score $eruption ca.ench_value matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_eruption_lvl 2
execute if score $eruption ca.ench_value matches 1.. if entity @s[advancements={entityid:player_hurt_entity={no_anger=true}}] run scoreboard players set $proc ca.ench_eruption_lvl 0

scoreboard players set $proc ca.ench_soulfire_lvl 0
execute if score $soulfire ca.ench_value matches 1.. unless score @s ca.attack_cooldown_percent matches 16.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=true,is_projectile=false}}] run scoreboard players set $proc ca.ench_soulfire_lvl 1
execute if score $soulfire ca.ench_value matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_projectile=true}}] run scoreboard players set $proc ca.ench_soulfire_lvl 1
execute if score $soulfire ca.ench_value matches 1.. if entity @s[advancements={entityid:player_hurt_entity={is_player_attack=false,is_projectile=false}}] run scoreboard players set $proc ca.ench_soulfire_lvl 2
execute if score $soulfire ca.ench_value matches 1.. if entity @s[advancements={entityid:player_hurt_entity={no_anger=true}}] run scoreboard players set $proc ca.ench_soulfire_lvl 0


#Damage Enchantments
execute if score $attack_type ca.ench_value matches 1 if score @s ca.ench_recoil_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/activate

execute if score $attack_type ca.ench_value matches 1 if score @s ca.ench_quick_strike_lvl matches 1.. unless entity @s[tag=ca.quick_strike_processed] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/hit

execute if score $attack_type ca.ench_value matches 1 if score @s ca.ench_cleaving_lvl matches 1.. unless predicate cartographer_core:player/sprinting if predicate cartographer_core:player/cant_crit unless score @s ca.special_attack_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/hit
execute if score $attack_type ca.ench_value matches 1 if score @s ca.ench_slamming_lvl matches 1.. unless predicate cartographer_core:player/sprinting unless predicate cartographer_core:player/cant_crit unless score @s ca.special_attack_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/hit
execute if score $attack_type ca.ench_value matches 1 if score @s ca.ench_thrusting_lvl matches 1.. if predicate cartographer_core:player/sprinting if predicate cartographer_core:player/cant_crit unless score @s ca.special_attack_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/hit

