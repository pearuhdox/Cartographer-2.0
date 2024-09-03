scoreboard players set $vfx ca.inertia_stack 0

execute if score @s ca.inertia_stack matches 2000.. if score $previous ca.inertia_stack matches ..1999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 4000.. if score $previous ca.inertia_stack matches ..3999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 6000.. if score $previous ca.inertia_stack matches ..5999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 8000.. if score $previous ca.inertia_stack matches ..7999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 10000.. if score $previous ca.inertia_stack matches ..9999 run scoreboard players set $vfx ca.inertia_stack 1

execute if score $vfx ca.inertia_stack matches 1.. run playsound minecraft:entity.breeze.idle_air player @s ~ ~ ~ 0.25 1