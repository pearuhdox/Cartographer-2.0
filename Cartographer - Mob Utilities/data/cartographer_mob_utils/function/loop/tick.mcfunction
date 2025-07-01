execute if score $timer ca.stack_var matches 1.. as @e[tag=ca.in_custom_stack] run function cartographer_mob_utils:stacking/tick_branch
scoreboard players remove $timer ca.stack_var 1

execute if score $timer ca.ticks_frozen matches 1.. run gamerule freezeDamage false
execute if score $timer ca.ticks_frozen matches 1 run gamerule freezeDamage true
execute if score $timer ca.ticks_frozen matches 1.. run scoreboard players remove $timer ca.ticks_frozen 1
execute store result score $gamerule ca.ticks_frozen run gamerule freezeDamage
