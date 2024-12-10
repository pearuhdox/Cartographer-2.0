scoreboard players set $vfx ca.induction_stack 0

execute if score @s ca.induction_stack matches 501.. if score $previous ca.induction_stack matches ..500 run scoreboard players set $vfx ca.induction_stack 1
execute if score @s ca.induction_stack matches 1001.. if score $previous ca.induction_stack matches ..1000 run scoreboard players set $vfx ca.induction_stack 1
execute if score @s ca.induction_stack matches 1500.. if score $previous ca.induction_stack matches ..1499 run scoreboard players set $vfx ca.induction_stack 1

execute if score $vfx ca.induction_stack matches 1.. run playsound minecraft:entity.breeze.idle_air player @s ~ ~ ~ 0.25 1
execute if score $vfx ca.induction_stack matches 1.. if score @s ca.induction_stack matches 1500.. run playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 1 1
