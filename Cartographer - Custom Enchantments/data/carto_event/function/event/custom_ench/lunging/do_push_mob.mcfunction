tag @s add co_execute_context

scoreboard players operation @s co_send = $force ca.ench_var
scoreboard players set @s co_y 3

$execute as @s at $(telegraph) rotated as $(telegraph) run function motion:motion/push

tag @s remove co_execute_context