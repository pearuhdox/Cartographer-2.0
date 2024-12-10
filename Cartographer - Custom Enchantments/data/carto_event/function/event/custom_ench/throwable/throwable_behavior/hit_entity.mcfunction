execute if score @s ca.ench_piercing_lvl matches 1.. run scoreboard players remove @s ca.ench_piercing_lvl 1

execute unless score @s ca.ench_loyalty_lvl matches 1.. unless score @s ca.ench_piercing_lvl matches 1.. run kill @s

playsound minecraft:item.trident.hit player @a[distance=..16] ~ ~ ~ 0.85 0.7