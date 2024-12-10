execute if predicate cartographer_core:world/vehicle on vehicle run function cartographer_core:handlers/checkers/projectile_branch

execute unless predicate cartographer_core:world/vehicle run function cartographer_core:handlers/checkers/projectile_success
execute if entity @s[tag=ca.in_ground] run kill @s

scoreboard players set $bobber_tag ca.registry 0
execute if entity @s[tag=ca.is_fishing_bobber_tracker,tag=!ca.tagged_entity] as @e[type=#bb:hostile,dx=0,dy=0,dz=0] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set $bobber_tag ca.registry 1
execute if score $bobber_tag ca.registry matches 1.. run function cartographer_core:handlers/checkers/projectile_bobber_tag
