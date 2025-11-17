scoreboard players operation @s ca.heal = $value ca.ench_var
scoreboard players operation @s ca.sapper_buffer += @s ca.heal

execute store result score $mob_health ca.heal run data get entity @s Health 10
execute unless score $mob_health ca.heal matches 0 run function cartographer_core:helper/heal_mob/main

playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 0.5 1.5

execute if score @s ca.sapper_buffer matches 2.. run function cartographer_custom_statuses:enchantment/passive/sapper/popup_rec