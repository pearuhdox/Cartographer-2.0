function #minecraft:cartographer/api/handlers/register/entity_register

execute if entity @s[tag=ca.needs_checker,type=creeper] run function cartographer_core:handlers/register/apply_creeper_checker
execute if entity @s[tag=ca.needs_checker,type=#bb:projectile] run function cartographer_core:handlers/register/apply_projectile_checker


tag @s add ca.registered