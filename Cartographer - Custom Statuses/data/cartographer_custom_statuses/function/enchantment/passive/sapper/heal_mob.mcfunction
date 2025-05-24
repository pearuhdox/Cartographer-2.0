scoreboard players operation @s bbl.heal_queue = $value ca.ench_var
scoreboard players operation @s ca.sapper_buffer += @s bbl.heal_queue

execute store result score $mob_health ca.heal run data get entity @s Health 10
execute unless score $mob_health ca.heal matches 0 run function bb:call/hpm/mob/heal

playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 0.5 1.5

execute if score @s ca.sapper_buffer matches 2.. run function cartographer_custom_statuses:enchantment/passive/sapper/popup_rec