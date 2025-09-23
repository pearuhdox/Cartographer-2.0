#Debug Message
$execute as $(killed) at @s if entity @s[type=creeper,tag=ca.needs_checker] on passengers if entity @s[type=marker,tag=ca.creeper_checker] run kill @s

$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s if entity @s[tag=ca.has_custom_status_infected] run function carto_event:event/custom_statuses/infected/death
$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s on passengers if entity @s[type=block_display,tag=ca.status_frozen_display] run function carto_event:event/custom_statuses/frozen/release

$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if entity @s[tag=ca.apply_status_kill_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"kill",type:"self"}
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at $(killed) if entity @s[tag=ca.apply_status_kill_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"kill",type:"target"}


#Run Custom Attributes On Kill
$execute if score $custom_attributes ca.installed matches 1.. as $(killer) at @s if score @s ca.attr_life_drain_chance_total matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"100"}

$execute if score $custom_attributes ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) if score @s ca.attr_chaining_hit_chance_total matches -1999999.. as $(killed) at @s unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"melee"}
$execute if score $custom_attributes ca.installed matches 1.. if data storage ltos:main data.is_projectile as $(killer) if score @s ca.attr_chaining_hit_chance_total matches -1999999.. as $(killed) at @s unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"projectile"}

#Run All At the Killer Only Enchantments in Statuses
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s run function cartographer_core:handlers/ltos/as_entity/custom_statuses_enchants

#Run All At the Killer Only Enchantments in Statuses - On Witnessing Mobs
$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s as @e[type=!player,tag=ca.witnessing,distance=..24] at @s run function cartographer_core:handlers/ltos/as_entity/custom_statuses_enchants


#Item Enchantments that run when the user dies
$execute as $(killed) if entity @s[type=player] run function #minecraft:cartographer/api/handlers/death_check/dies_positional
$execute as $(killed) unless entity @s[type=player] unless entity @s[tag=ca.no_death_items] run function #minecraft:cartographer/api/handlers/death_check/dies_positional

#Custom Enchantment Pack Kill Effects
$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s run function cartographer_custom_enchantments:enchantment/helper/weapon/reset_ench_values
$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s run function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s run function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values_passive


$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/attack

$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) if score @s starfall_lvl matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/starfall/damage_event {proc_coeff:"100"}
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) if score @s orbit_lvl matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/orbit/damage_event {proc_coeff:"100"}

$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score $aberration ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/passive/aberration/kill/user
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score $quake ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/passive/quake/kill/user

$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at $(killed) if score $aberration ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/passive/aberration/kill/victim
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at $(killed) if score $quake ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/passive/quake/kill/victim


$execute if score $custom_enchantments ca.installed matches 1.. as $(killed) at @s if score @s ca.ench_aberration_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/aberration/kill/user
$execute if score $custom_enchantments ca.installed matches 1.. as $(killed) at @s if score @s ca.ench_quake_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/quake/kill/user

$execute if score $custom_enchantments ca.installed matches 1.. as $(killed) at $(killed) if score @s ca.ench_aberration_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/aberration/kill/victim
$execute if score $custom_enchantments ca.installed matches 1.. as $(killed) at $(killed) if score @s ca.ench_quake_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/quake/kill/victim


$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) if score @s ca.ench_eruption_lvl matches 1.. as $(killed) at @s unless entity @s[tag=ca.enchant_opportunist] run function cartographer_custom_enchantments:enchantment/passive/eruption/damage_event
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) if score @s ca.ench_soulfire_lvl matches 1.. as $(killed) at @s unless entity @s[tag=ca.enchant_opportunist] run function cartographer_custom_enchantments:enchantment/passive/soulfire/damage_event

#Weapon Enchantment Kill Effects
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_focus_lvl matches 1.. run scoreboard players add @s ca.focus_stacks 1
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_focus_lvl matches 1.. if score @s ca.focus_stacks matches 5.. run scoreboard players set @s ca.focus_stacks 4
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_focus_lvl matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/focus/active",duration:120,delay:0,parameters:{},merge_behavior:"merge"}

$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.concentration_time matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/vfx

$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_recoil_lvl matches 1.. if data storage ltos:main data.is_player_attack unless data storage ltos:main data.is_projectile run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/activate

$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s if score @s ca.ench_explosive_lvl matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/kill with storage ltos:main macro
$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_projectile as $(killer) at @s if score @s ca.ench_explosive_lvl matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/kill with storage ltos:main macro

$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s if score @s ca.ench_quick_strike_lvl matches 1.. unless entity @s[tag=ca.quick_strike_processed] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/hit

$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s if score @s ca.ench_cleaving_lvl matches 1.. unless predicate cartographer_core:player/sprinting if predicate cartographer_core:player/cant_crit unless score @s ca.special_attack_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/cleaving/hit
$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s if score @s ca.ench_slamming_lvl matches 1.. unless predicate cartographer_core:player/sprinting unless predicate cartographer_core:player/cant_crit unless score @s ca.special_attack_cooldown matches 1.. at $(killed) run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/slamming/kill_hit
$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) at @s if score @s ca.ench_thrusting_lvl matches 1.. if predicate cartographer_core:player/cant_crit unless score @s ca.special_attack_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/thrusting/hit

scoreboard players set $grappling ca.ench_value 0
$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_projectile as $(killer) at @s run scoreboard players operation $grappling ca.ench_value = @s ca.ench_grappling_lvl
$execute if score $custom_enchantments ca.installed matches 1.. if score $grappling ca.ench_value matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/grappling/activate_mob_hit

$execute if score $custom_enchantments ca.installed matches 1.. if data storage ltos:main data.is_projectile as $(killer) at @s if score @s ca.ench_shrapnel_lvl matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/hit


#Scavenger
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if predicate cartographer_custom_enchantments:has/scavenger run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/check

scoreboard players set $used_momentum ca.momentum_stack 0
$execute as $(killer) at @s if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/user
$execute if score $used_momentum ca.momentum_stack matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/victim

scoreboard players set $used_storm ca.storm_stack 0
$execute as $(killer) at @s if score @s ca.ench_storm_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/hit/user
$execute if score $used_storm ca.storm_stack matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/storm/hit/victim

scoreboard players set $used_induction ca.induction_stack 0
$execute as $(killer) at @s if score @s ca.ench_induction_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/hit/user
$execute if score $used_induction ca.induction_stack matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/induction/hit/victim

scoreboard players set $check ca.gravity_var 0
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_gravity_lvl matches 1.. unless score @s ca.gravity_time matches 10.. run function cartographer_custom_enchantments:enchantment/passive/gravity/kill
$execute if score $custom_enchantments ca.installed matches 1.. if score $check ca.gravity_var matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/victim

#Mob Utils
$execute if score $mob_utils ca.installed matches 1.. as $(killed) at @s if entity @s[tag=ca.custom_leashing] as $(killer) at @s run tag @s add ca.remove_lead
$execute if score $mob_utils ca.installed matches 1.. as $(killed) at @s if entity @s[tag=ca.custom_leashing] run schedule function carto_event:event/mob_utils/leashing/kill_leads 2t append

$execute as $(killed) at @s run tellraw @a[scores={ca.debug_lvl=3..}] [{"text":"[Debug] ","color":"red"},{"text":"[LTOS Handler] ","color":"yellow"},{"text":"❱ ","color":"#FFE0A3"},{"selector":"@s","color":"aqua"},{"text":" Entity Killed (As Entity).","color":"#FFE0A3"}]