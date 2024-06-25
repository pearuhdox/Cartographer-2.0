scoreboard players remove @s ca.barricade_shields 1

execute if entity @s[type=!player] run playsound minecraft:item.shield.block hostile @a[distance=..16] ~ ~ ~ 0.8 0.75
execute if entity @s[type=player] run playsound minecraft:item.shield.block player @a[distance=..16] ~ ~ ~ 0.8 0.75

execute if entity @s[type=!player] if score @s ca.barricade_shields matches 1.. positioned ~ ~1 ~ run particle dust{color:[0.749,0.851,0.816],scale:1.25} ~ ~ ~ 0.25 0.25 0.25 1 10 normal
