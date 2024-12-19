scoreboard players set $diff ca.shade_health 0

scoreboard players operation @s ca.shade_health_old = @s ca.shade_health
execute store result score @s ca.shade_health run data get entity @s Health

execute if score @s ca.shade_health_old matches 1.. run scoreboard players operation $diff ca.shade_health = @s ca.shade_health
execute if score @s ca.shade_health_old matches 1.. run scoreboard players operation $diff ca.shade_health -= @s ca.shade_health_old

#execute on passengers if entity @s[type=allay] if score @s ca.lifetime matches 21.. if predicate cartographer_core:potion_effect/has_absorption run scoreboard players set $revive_health_pot ca.shade_health 1
#execute on passengers if entity @s[type=allay] if score @s ca.lifetime matches 21.. if predicate cartographer_core:potion_effect/has_regeneration run scoreboard players set $revive_health_pot ca.shade_health 1
execute on passengers if entity @s[type=allay] if score @s ca.lifetime matches 21.. if score $diff ca.shade_health matches 1.. run scoreboard players set $revive_health_pot ca.shade_health 1

#execute on passengers if entity @s[type=allay] if score @s ca.lifetime matches 21.. if predicate cartographer_core:potion_effect/has_absorption run function cartographer_charon:multiplayer/do_revive
#execute on passengers if entity @s[type=allay] if score @s ca.lifetime matches 21.. if predicate cartographer_core:potion_effect/has_regeneration run function cartographer_charon:multiplayer/do_revive
execute on passengers if entity @s[type=allay] if score @s ca.lifetime matches 21.. if score $diff ca.shade_health matches 1.. run function cartographer_charon:multiplayer/do_revive
