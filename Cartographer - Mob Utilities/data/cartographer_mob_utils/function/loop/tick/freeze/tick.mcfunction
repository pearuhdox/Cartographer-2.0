scoreboard players set $test ca.ticks_frozen 0
execute at @s positioned ~ ~ ~ run function cartographer_mob_utils:loop/tick/freeze/test
execute at @s positioned ~ ~1 ~ run function cartographer_mob_utils:loop/tick/freeze/test

execute if score $test ca.ticks_frozen matches 1.. store result score @s ca.ticks_frozen run data get entity @s TicksFrozen
execute unless score $test ca.ticks_frozen matches 1.. if score @s ca.ticks_frozen matches 1.. run scoreboard players remove @s ca.ticks_frozen 2

execute if score @s ca.ticks_frozen matches 140.. run scoreboard players add @s ca.freeze_tick 1
execute unless score $test ca.ticks_frozen matches 1.. run scoreboard players set @s ca.freeze_tick 0
execute if score @s ca.freeze_tick matches 40.. run function cartographer_mob_utils:loop/tick/freeze/damage