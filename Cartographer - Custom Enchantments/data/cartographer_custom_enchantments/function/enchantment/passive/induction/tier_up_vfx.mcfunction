scoreboard players set $vfx ca.induction_stack 0

execute if score @s ca.induction_stack matches 501.. if score $previous ca.induction_stack matches ..500 run scoreboard players set $vfx ca.induction_stack 1
execute if score @s ca.induction_stack matches 1001.. if score $previous ca.induction_stack matches ..1000 run scoreboard players set $vfx ca.induction_stack 1
execute if score @s ca.induction_stack matches 1500.. if score $previous ca.induction_stack matches ..1499 run scoreboard players set $vfx ca.induction_stack 1

execute if score $vfx ca.induction_stack matches 1.. run playsound minecraft:entity.breeze.idle_air hostile @a[distance=..16] ~ ~ ~ 0.5 1
execute if score $vfx ca.induction_stack matches 1.. if score @s ca.induction_stack matches 1500.. run playsound minecraft:entity.breeze.charge hostile @a[distance=..16] ~ ~ ~ 1 1

execute if score $vfx ca.induction_stack matches 1.. unless score @s ca.induction_stack matches 1500.. run particle minecraft:wax_off ~ ~1 ~ 0.2 0.4 0.2 1 15 normal
execute if score $vfx ca.induction_stack matches 1.. if score @s ca.induction_stack matches 1500.. run particle minecraft:wax_off ~ ~1 ~ 0.2 0.4 0.2 1 25 normal

execute if score $vfx ca.induction_stack matches 1.. if score @s ca.induction_stack matches 1500.. anchored eyes positioned ^ ^-0.5 ^ run function cartographer_custom_enchantments:enchantment/passive/induction/popup