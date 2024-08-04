#Debug Message
$execute as $(killed) at @s if entity @s[type=creeper,tag=ca.needs_checker] on passengers if entity @s[type=marker,tag=ca.creeper_checker] run kill @s


$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s if entity @s[tag=ca.has_custom_status_infected] run function carto_event:event/custom_statuses/infected/death
$execute if score $custom_statuses ca.installed matches 1.. as $(killed) at @s on passengers if entity @s[type=block_display,tag=ca.status_frozen_display] run function carto_event:event/custom_statuses/frozen/release

$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if entity @s[tag=ca.apply_status_kill_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"kill",type:"self"}
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at $(killed) if entity @s[tag=ca.apply_status_kill_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"bbl:pldata",path:"sudo_root.working_data.cartographer.apply_status_data.actions",action:"kill",type:"target"}

$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_mightiness_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/mightiness/do_enchant
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_swiftness_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/swiftness/do_enchant
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_hastiness_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/hastiness/do_enchant
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_stealthiness_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/stealthiness/do_enchant

$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_sapper_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/sapper/do_enchant
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_lifeblood_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/lifeblood/do_enchant
$execute if score $custom_statuses ca.installed matches 1.. as $(killer) at @s if score @s ca.ench_bracing_lvl matches 1.. run function cartographer_custom_statuses:enchantment/passive/bracing/do_enchant


$execute as $(killed) at @s run tellraw @a[scores={ca.debug_lvl=3..}] [{"text":"[Debug] ","color":"red"},{"text":"[LTOS Handler] ","color":"yellow"},{"text":"❱ ","color":"#FFE0A3"},{"selector":"@s","color":"aqua"},{"text":" Entity Killed (As Entity).","color":"#FFE0A3"}]