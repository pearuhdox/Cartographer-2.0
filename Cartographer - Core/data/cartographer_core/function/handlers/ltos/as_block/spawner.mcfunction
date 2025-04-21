
#Statuses
$execute if score $custom_statuses ca.installed matches 1.. as $(destroyer) if entity @s[tag=ca.apply_status_break_spawner_self] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"break_spawner",type:"self"}
$execute if score $custom_statuses ca.installed matches 1.. as $(destroyer) if entity @s[tag=ca.apply_status_break_spawner_target] run function cartographer_custom_statuses:apply_status/apply/start_loop {location:"cartographer:player_data",path:"main.working_data.cartographer.apply_status_data.actions",action:"break_spawner",type:"target"}

$execute if score $custom_statuses ca.installed matches 1.. as $(destroyer) run function cartographer_core:handlers/ltos/as_block/custom_statuses_enchants

#Enchantments
$execute if score $custom_enchantments ca.installed matches 1.. as $(destroyer) run function cartographer_core:handlers/ltos/as_block/custom_enchantments_enchants

#Scavenger
$execute if score $custom_enchantments ca.installed matches 1.. as $(destroyer) at @s if predicate cartographer_custom_enchantments:has/scavenger run function cartographer_custom_enchantments:enchantment/weapon/unique/other/scavenger/check
