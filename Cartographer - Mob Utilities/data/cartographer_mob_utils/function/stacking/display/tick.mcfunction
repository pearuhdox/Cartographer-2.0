#execute as @s at @s run say display
execute as @s at @s run scoreboard players set @s ca.entity_purge_var 0


scoreboard players set $vehicle ca.stack_var 0
execute as @s at @s on vehicle run scoreboard players set $vehicle ca.stack_var 1

scoreboard players set $item_veh ca.stack_var 0
execute as @s at @s on vehicle if entity @s[type=item_display] run scoreboard players set $item_veh ca.stack_var 1

execute unless score @s ca.stack_delay matches 1.. if score $item_veh ca.stack_var matches 0 if score $vehicle ca.stack_var matches 0 as @s at @s run function cartographer_mob_utils:stacking/display/despawn
execute if score @s ca.stack_delay matches 1.. run scoreboard players remove @s ca.stack_delay 1