execute if entity @s[type=fishing_bobber] run tag @s add ca.needs_checker

function #minecraft:cartographer/api/handlers/register/entity_register

execute if entity @s[tag=ca.needs_checker,type=creeper] run function cartographer_core:handlers/register/apply_creeper_checker
execute if entity @s[tag=ca.needs_checker,type=#bb:projectile] run function cartographer_core:handlers/register/apply_projectile_checker
execute if entity @s[tag=ca.needs_checker,type=fishing_bobber] run function cartographer_core:handlers/register/apply_projectile_checker

execute if score $custom_attributes ca.installed matches 1.. run function cartographer_core:handlers/register/custom_attributes_register
execute if score $custom_statuses ca.installed matches 1.. run function cartographer_core:handlers/register/custom_statuses_register
execute if score $mob_utils ca.installed matches 1.. run function cartographer_mob_utils:register/setup_events

tag @s add ca.registered