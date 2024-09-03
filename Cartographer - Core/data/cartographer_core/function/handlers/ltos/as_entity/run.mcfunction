#Debug Message
$execute as $(killed) at @s if entity @s[type=creeper,tag=ca.needs_checker] on passengers if entity @s[type=marker,tag=ca.creeper_checker] run kill @s


$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s if entity @s[tag=ca.has_custom_status_infected] run function carto_event:event/custom_statuses/infected/death
$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s on passengers if entity @s[type=block_display,tag=ca.status_frozen_display] run function carto_event:event/custom_statuses/frozen/release

$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if entity @s[tag=ca.apply_status_kill_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"kill",type:"self"}
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at $(killed) if entity @s[tag=ca.apply_status_kill_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"kill",type:"target"}

#Run Custom Attributes On Kill
$execute if score $custom_attributes ca.installed matches 1.. as $(killer) at @s if score @s ca.attr_life_drain_chance_total matches -1999999.. run function cartographer_custom_attributes:custom_attributes/effects/life_drain/start {proc_coeff:"100"}

$execute if score $custom_attributes ca.installed matches 1.. if data storage ltos:main data.is_player_attack as $(killer) if score @s ca.attr_chaining_chance_total matches -1999999.. as $(killed) at @s unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"melee"}
$execute if score $custom_attributes ca.installed matches 1.. if data storage ltos:main data.is_projectile as $(killer) if score @s ca.attr_chaining_chance_total matches -1999999.. as $(killed) at @s unless entity @s[tag=ca.was_chained] run function cartographer_custom_attributes:custom_attributes/effects/chaining_hit/start {proc_coeff:"100",attack_type:"projectile"}

#Run All At the Killer Only Enchantments in Statuses
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s run function cartographer_core:handlers/ltos/as_entity/custom_statuses_enchants

#Custom Enchantment Pack Kill Effects
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/attack

scoreboard players set $used_momentum ca.momentum_stack 0
$execute as $(killer) at @s if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/user
$execute if score $used_momentum ca.momentum_stack matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/victim

scoreboard players set $check ca.gravity_var 0
$execute if score $custom_enchantments ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_gravity_lvl matches 1.. unless score @s ca.gravity_time matches 10.. run function cartographer_custom_enchantments:enchantment/passive/gravity/kill
$execute if score $custom_enchantments ca.installed matches 1.. if score $check ca.gravity_var matches 1.. as $(killed) at @s run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/victim

$execute as $(killed) at @s run tellraw @a[scores={ca.debug_lvl=3..}] [{"text":"[Debug] ","color":"red"},{"text":"[LTOS Handler] ","color":"yellow"},{"text":"❱ ","color":"#FFE0A3"},{"selector":"@s","color":"aqua"},{"text":" Entity Killed (As Entity).","color":"#FFE0A3"}]