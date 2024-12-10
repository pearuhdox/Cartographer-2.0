scoreboard players set $vfx ca.inertia_stack 0

execute if score @s ca.inertia_stack matches 300.. if score $previous ca.inertia_stack matches ..299 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 600.. if score $previous ca.inertia_stack matches ..599 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 900.. if score $previous ca.inertia_stack matches ..899 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 1200.. if score $previous ca.inertia_stack matches ..1199 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 1500.. if score $previous ca.inertia_stack matches ..1499 run scoreboard players set $vfx ca.inertia_stack 1

execute if score $vfx ca.inertia_stack matches 1.. run playsound minecraft:entity.breeze.idle_air player @s ~ ~ ~ 0.25 1