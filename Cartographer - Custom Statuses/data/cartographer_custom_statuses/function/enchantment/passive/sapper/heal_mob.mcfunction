scoreboard players operation @s bbl.heal_queue = $value ca.ench_var

execute store result score $mob_health ca.heal run data get entity @s Health 10
execute unless score $mob_health ca.heal matches 0 run function bb:call/hpm/mob/heal

playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 0.5 1.5
