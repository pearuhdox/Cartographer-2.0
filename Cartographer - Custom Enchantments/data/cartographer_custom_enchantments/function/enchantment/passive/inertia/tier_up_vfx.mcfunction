scoreboard players set $vfx ca.inertia_stack 0

execute if score @s ca.inertia_stack matches 2000.. if score $previous ca.inertia_stack matches ..1999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 4000.. if score $previous ca.inertia_stack matches ..3999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 6000.. if score $previous ca.inertia_stack matches ..5999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 8000.. if score $previous ca.inertia_stack matches ..7999 run scoreboard players set $vfx ca.inertia_stack 1
execute if score @s ca.inertia_stack matches 10000.. if score $previous ca.inertia_stack matches ..9999 run scoreboard players set $vfx ca.inertia_stack 1

execute if score $vfx ca.inertia_stack matches 1.. run playsound minecraft:entity.breeze.idle_air hostile @a[distance=..16] ~ ~ ~ 0.5 1

execute if score $vfx ca.inertia_stack matches 1.. run particle minecraft:wax_off ~ ~1 ~ 0.2 0.4 0.2 1 25 normal

execute if score $vfx ca.inertia_stack matches 1.. anchored eyes positioned ^ ^-0.5 ^ run function cartographer_custom_enchantments:enchantment/passive/inertia/popup